class Facility < ApplicationRecord
 def self.get_facility_param(params)
   	 params.require(:facility).permit(:facility_id, :name,
     :description, :cell_location, :closing_date,
     :opening_date, :parent_facility, 
     :email_address, :phone_number,
     :type_code, :status)      
 end
 
 def self.update_facility_details(facility_id)
   	   self.find_by_facility_id(facility_id)	
 end
end
