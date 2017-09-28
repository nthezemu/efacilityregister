class FacilityService < ApplicationRecord
  def self.get_services_params(params)
      params[:services]
 	
  end
  def self.update_services_details(facility_id,services)
      if(services.blank?)
        self.where(facility_id: facility_id).delete_all
      else
        self.where(facility_id: facility_id).delete_all
         services.each do |sup| 
           @facility_service = FacilityService.new(
           facility_id: facility_id, 
           service_id: sup )
           @facility_service.save 
         end
       end
  end
  def self.create_services_details(facility_id,services)
  	  if(services.blank?)

  	  else
  	     services.each do |s|
           @facility_service = FacilityService.new(
           facility_id: facility_id, 
           service_id: s )
           @facility_service.save
         end
     end
   end
end
