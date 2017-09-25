class FacilitiesController < ApplicationController

  def index
    #check various types of health facilities
    facilities = Facility.all
    @central_hospitals = 0
    @health_centres = 0
    @hospitals = 0
    @district_hospitals = 0
    @dispensaries = 0
    @other = 0

    facilities.each do |f|
      case f.type_code
      when 'hospital'
        @hospitals += 1
      when 'health centre'
        @health_centres += 1
      when 'district hospital'
        @district_hospitals += 1
      when 'central hospital'
        @central_hospitals += 1
      when 'dispensary'
        @dispensaries += 1
      else
        @other += 1
          
      end
    end
     @allhealthfacilities = 0
    @allhealthfacilities += (@central_hospitals + @health_centres + @hospitals + @district_hospitals + @dispensaries + @other)
    
  end
  
   def new
      @facility = Facility.new
      @utilities = Utility.all
      @utility_name = Utility.find_by_sql("select distinct name from utilities")
      @services = Service.all
      @resources = Resource.all
   end


   def create
      @facility = Facility.new(
        facility_id: params[:facility][:facility_id], 
        name: params[:facility][:name], 
        description: params[:facility][:description], 
        cell_location: params[:facility][:cell_location],
        closing_date: params[:facility][:closing_date],
        opening_date: params[:facility][:opening_date],
        parent_facility: params[:facility][:parent_facility],
        email_address: params[:facility][:email_address],
        phone_number: params[:facility][:phone_number],
        latitude: params[:facility][:longitude],
        longitude: params[:facility][:latitude],
        type_code: params[:facility][:type_code],
        status: params[:facility][:status])
      facility_id = params[:facility][:facility_id]

      if @facility.save
         flash[:notice] = "facilicity has been created successfully"

         FacilityUtility.create_utilities_details(facility_id,utility_params)

         FacilityService.create_services_details(facility_id,service_params)

         FacilityResource.create_resources_details(facility_id,resource_params)

         FacilityLocation.create_locations_details(facility_id,location_params)
        
         redirect_to :action => 'show', :facility_id => @facility.facility_id
      else
         #@subjects = Subject.all 
         render :action => 'create'
      end
      
   end

   

   def show
    @facility = Facility.find_by_facility_id(params[:facility_id])
    facility_id = params[:facility_id]
    @utility = Utility.find_by_sql("select u.name, u.provider from utilities u left join facility_utilities
       fu on u.id=fu.utility_id left join facilities f on fu.facility_id =f.facility_id where f.facility_id= '#{facility_id}'")

    @service = Service.find_by_sql("select s.name from services s left join facility_services
       fs on s.id=fs.service_id left join facilities f on fs.facility_id =f.facility_id where f.facility_id= '#{facility_id}'")
   
    @resource = Resource.find_by_sql("select r.name from resources r left join facility_resources
       fr on r.id=fr.resource_id left join facilities f on fr.facility_id =f.facility_id where f.facility_id= '#{facility_id}'")
    if @resource.blank?
         flash[:notice] = "There are no resources"

    end 

    @location = Location.find_by_sql("select * from locations l left join facility_locations
       fl on l.id=fl.location_id left join facilities f on fl.facility_id =f.facility_id where f.facility_id= '#{facility_id}'")
    if @location.blank?
         flash[:notice] = "There are no resources"

    end 
   end  

   def list
    if params[:name].present?
      particular_value = params[:name]
      @specific_name = params[:name]
       @facilities = Facility.find_by_sql("select f.name,f.facility_id,f.description,f.cell_location from facilities f left join facility_services
       fs on f.facility_id=fs.facility_id left join services s on fs.service_id =s.id where s.name = '#{particular_value}'").paginate(:page => params[:page], :per_page => 10)

    else
    zonevalue = session[:zone_name]
    facilities1 = session[:facilities_queried]
    if (facilities1.blank?) && (zonevalue.blank?)
       @facilities = Facility.all.paginate(:page => params[:page], :per_page => 10)
    else
        @facilities = facilities1
        session.delete(:facilities_queried)
        session.delete(:zone_name)
    end  
   end
   end


   def delete
    @facility = Facility.find_by_facility_id(params[:facility_id])
    
    @facility.destroy
    flash[:notice] = "facility has been deleted successfully"
    
    redirect_to :action => 'list'
   end

   
   def edit
    @facility = Facility.find_by_facility_id(params[:facility_id])
    fac_id = params[:facility_id]

    @utility_name = Utility.find_by_sql("select distinct name from utilities")
    @facility_utilities = FacilityUtility.find_by_sql("select facility_id,utility_id from facility_utilities where facility_id = '#{fac_id}'")
      @utilities = Utility.all

    @facility_services = FacilityService.find_by_sql("select facility_id,service_id from facility_services where facility_id = '#{fac_id}'")
      @services = Service.all

    @facility_resources = FacilityResource.find_by_sql("select facility_id,resource_id,resource_quantity from facility_resources where facility_id = '#{fac_id}'")
      @resources = Resource.all

    @facility_locations = FacilityLocation.find_by_sql("select facility_id,location_id,population from facility_locations where facility_id = '#{fac_id}'")
      @locations = Location.all

   end

   def facility_param
     Facility.get_facility_param(params)
   end
   def utility_params
      FacilityUtility.get_utilities_params(params)
   end
   def service_params
      FacilityService.get_services_params(params)
   end
   def location_params
      FacilityLocation.get_locations_params(params)
   end
   def resource_params
      FacilityResource.get_resources_params(params)
   end
   def update
     @facility = Facility.update_facility_details(facility_param[:facility_id])

      FacilityUtility.update_utilities_details(facility_param[:facility_id],utility_params)

      FacilityService.update_services_details(facility_param[:facility_id],service_params)
      
      FacilityLocation.update_locations_details(facility_param[:facility_id],location_params)

      FacilityResource.update_resources_details(facility_param[:facility_id],resource_params)

    if @facility.update_attributes(facility_param)
      flash[:notice] = "facilicity has been updated successfully"
      redirect_to :action => 'show', :facility_id => @facility.facility_id
    else
      redirect_to :action => 'edit', :facility_id => @facility.facility_id
    end
     
   end
   
   def searchbydistrictquery
      district_name = params[:districts][:districtname]
      session[:zone_name] =district_name
      facilities_queried = Facility.find_by_sql("select f.name,f.facility_id,f.description,f.cell_location from facilities f left join facility_locations
       fl on f.facility_id=fl.facility_id left join locations l on fl.location_id =l.id where l.district = '#{district_name}'")
   
    session[:facilities_queried] = facilities_queried
    redirect_to :action => 'list'
   end
  def searchbydistrict

  end

  def search_by_zone_query
      zone_name = params[:zones][:zonename]
      session[:zone_name] = zone_name
      facilities_queried = Facility.find_by_sql("select f.name,f.facility_id,f.description,f.cell_location from facilities f left join facility_locations
       fl on f.facility_id=fl.facility_id left join locations l on fl.location_id =l.id where l.zone = '#{zone_name}'")
   
    session[:facilities_queried] = facilities_queried
    redirect_to :action => 'list'
   end
   def search_by_zone

   end 

   def search_by_partner_query
      partner_name = params[:partners][:partnername]
      session[:zone_name] = partner_name
      facilities_queried = Facility.find_by_sql("select f.name,f.facility_id,f.description,f.cell_location from facilities f left join facility_partners
       fp on f.facility_id=fp.facility_id left join partners p on fp.partner_id =p.id where p.name = '#{partner_name}'")
   
      session[:facilities_queried] = facilities_queried
      redirect_to :action => 'list'
   end

   def search_by_partner

   end 
end
