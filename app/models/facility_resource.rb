class FacilityResource < ApplicationRecord
  def self.get_resources_params(params)
  	  if(params[:resources].blank? || params[:quantity].blank?)
        resources =[]
  	  else
        resources = params[:resources].zip(params[:quantity])
      end	
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
  def self.create_resources_details(facility_id,resources)
  	 if(resources.blank?)

  	  else
  	   check_emptness = 0
  	   resources.each do |r,q|
        if(r == "" || q == "")
           check_emptness += 1
        end
  	   end 
       if(check_emptness != 0)

       else
        resources.each do |r,q| 
         @facility_resource = FacilityResource.new(
         facility_id: facility_id, 
         resource_id: r,
         resource_quantity: q )
         @facility_resource.save       
        end
      end
    end
  end
end
