class FacilityResource < ApplicationRecord
  def self.get_resources_params(params)
      params[:resources].zip(params[:quantity])	
  end
  def self.update_resources_details(facility_id,resources)
       self.where(facility_id: facility_id).delete_all
       resources.each do |rup,qup| 
         @facility_resource = FacilityResource.new(
         facility_id: facility_id, 
         resource_id: rup,
         resource_quantity: qup )
         @facility_resource.save       
       end
  end
end
