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
        latitude: params[:facility][:latitude],
        longitude: params[:facility][:longitude],
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

    facilities1 = session[:facilities_queried]
    if facilities1.blank?

       @facilities = Facility.all
       else
        @facilities = facilities1
        session.delete(:facilities_queried)
      end  
   end
   
   def delete
    @facility = Facility.find_by_facility_id(params[:facility_id])
    
    @facility.destroy
    flash[:notice] = "facility has been deleted successfully
    "
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
      facilities_queried = Facility.find_by_sql("select * from locations l left join facility_locations fl on l.id = fl.location_id left join facilities f on fl.facility_id = f.facility_id  where l.district = '#{district_name}'")
   
    session[:facilities_queried] = facilities_queried
    redirect_to :action => 'list'
   end
  def searchbydistrict

  end

  def search_by_zone_query
      zone_name = params[:zones][:zonename]
      facilities_queried = Facility.find_by_sql("select * from locations l left join facility_locations fl on l.id = fl.location_id left join facilities f on fl.facility_id = f.facility_id  where l.zone = '#{zone_name}'")
   
    session[:facilities_queried] = facilities_queried
    redirect_to :action => 'list'
   end
   def search_by_zone

   end 

   def search_by_partner_query
      partner_name = params[:partners][:partnername]
      facilities_queried = Facility.find_by_sql("select * from partners p left join facility_partners fp on p.id = fp.partner_id left join facilities f on fp.facility_id = f.facility_id  where p.name = '#{partner_name}'")
   
    session[:facilities_queried] = facilities_queried
    redirect_to :action => 'list'
   end

   def search_by_partner

   end 
end
