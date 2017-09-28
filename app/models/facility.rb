class Facility < ApplicationRecord

   #self.primary_key = 'facility_id'
   #validates :facility_id,presence: true, :uniqueness => true
   validates :name, presence: true
   validates :description, presence: true
   validates :cell_location, presence: true
   validates :opening_date, presence: true
   validates :email_address, :uniqueness => true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}
   validates :parent_facility, presence: true
   validates :phone_number, presence: true, :uniqueness => true

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
