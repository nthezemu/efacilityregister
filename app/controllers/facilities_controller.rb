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
     
   end

   def list
    @facilities = Facility.all
  
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


end
