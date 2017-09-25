class Facility < ApplicationRecord

   self.primary_key = 'facility_id'
   validates :name, presence: true, length: { in: 3..150 }
   validates :description, presence: true, length: { in: 50..300 }
   validates :cell_location, presence: true, :uniqueness => true, length: { in: 10..150 }
   validates :opening_date, presence: true, length: { in: 10..12 }
   validates :email_address, :uniqueness => true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}
   validates :parent_facility, presence: true, length: { in: 10..150 }
   validates :phone_number, presence: true, :uniqueness => true, length: { in: 0..10 }
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
