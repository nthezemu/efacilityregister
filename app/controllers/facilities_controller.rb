class FacilitiesController < ApplicationController

  def index
  end
  
   def new
      @facility = Facility.new
      #@subjects = Subject.all
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

      if @facility.save
         flash[:notice] = "facilicity has been created successfully"
         #raise @facility.inspect
         params[:utilities].each do |u|
         @facility_utility = FacilityUtility.new(
         facility_id: params[:facility][:facility_id], 
         utility_id: u )
          @facility_utility.save
         end
         params[:services].each do |s|
         @facility_service = FacilityService.new(
         facility_id: params[:facility][:facility_id], 
         service_id: s )
         @facility_service.save
         end
         params[:resource].each do |r|
         @facility_resource = FacilityResource.new(
         facility_id: params[:facility][:facility_id], 
         resource_id: r
         #resource_quantity: params[:facility_resource][:quantity]
         )
         @facility_resource.save
         end
         # save the location of the facility
         @facility_location = FacilityLocation.new(
         facility_id: params[:facility][:facility_id], 
         location_id: params[:facility_location][:zonename],
         population: params[:facility_location][:population])
         @facility_location.save
         redirect_to :action => 'show', :facility_id => @facility.facility_id
      else
         #@subjects = Subject.all 
         render :action => 'create'
      end
      
   end

   def show
    @facility = Facility.find_by_facility_id(params[:facility_id])
    facility_id = params[:facility_id]
    #raise facility_id.inspect
    @utility = Utility.find_by_sql("select u.name, u.provider from utilities u left join facility_utilities
       fu on u.id=fu.utility_id left join facilities f on fu.facility_id =f.facility_id where f.facility_id= '#{facility_id}'")
   #raise @utility.inspect

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
       fs on f.facility_id=fs.facility_id left join services s on fs.service_id =s.id where s.name = '#{particular_value}'")

    else


    zonevalue = session[:zone_name]

    zonevalue = session[:zone_name]
    facilities1 = session[:facilities_queried]
    if (facilities1.blank?) && (zonevalue.blank?)

       @facilities = Facility.all
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
     
   end
   def facility_param
     params.require(:facility).permit(:facility_id, :name,
     :description, :cell_location, :closing_date,
     :opening_date, :parent_facility, 
     :email_address, :phone_number,
     :type_code, :status)
     
   end
   def update
    @facility = Facility.find_by_facility_id(facility_param[:facility_id])
    if @facility.update_attributes(facility_param)
      flash[:notice] = "facilicity has been updated successfully"
      redirect_to :action => 'show', :facility_id => @facility.facility_id
      #raise @facility.facility_id.inspect
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
