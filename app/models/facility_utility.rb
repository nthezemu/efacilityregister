class FacilityUtility < ApplicationRecord
 def self.get_utilities_params(params)
      params[:utilities]
 	
  end
  def self.update_utilities_details(facility_id,utilities)
      self.where(facility_id: facility_id).delete_all
       utilities.each do |up| 
         @facility_utility = FacilityUtility.new(
         facility_id: facility_id, 
         utility_id: up )
         @facility_utility.save 
      end
  end
  def self.create_utilities_details(facility_id,utilities)
  	     if(utilities.blank?)
  	     	#@response = "failed"
  	     else
  	     utilities.each do |u|
         @facility_utility = FacilityUtility.new(
         facility_id: facility_id, 
         utility_id: u )
          @facility_utility.save
        end
      end
  end
end
