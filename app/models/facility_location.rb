class FacilityLocation < ApplicationRecord
  def self.get_locations_params(params)
  	  
  	  locations = {location_id: params[:locationid], area: params[:area],population: params[:population]}	
  end
  def self.update_locations_details(facility_id,locations)
       self.where(facility_id: facility_id).delete_all
       #raise locations[:location_id].inspect
       @facility_location = FacilityLocation.new(
         facility_id: facility_id, 
         location_id: locations[:location_id],
         population: locations[:population])
         @facility_location.save
         
   end
   def self.create_locations_details(facility_id,locations)
   	 locationid = []
   	 locationid = locations[:location_id]
       #raise locationid[0].inspect
       @facility_location = FacilityLocation.new(
         facility_id: facility_id, 
         location_id: locationid[0],
         population: locations[:population])
         @facility_location.save
         
   end
  end
