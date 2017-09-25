class ResourcesController < ApplicationController




def create
      @resource=Resource.new

        if @resource.save
        flash[:notice] = "resource has been added successfully"
       end 
    end



	def list

  	 @resource =Resource.all
	end



	def edit
		@resource= Resource.find(params['id'])
		
	end
	
	def resource_param
		 params.require(:resource).permit( :name )
		
	end



	 def delete
    	@resource = Resource.find(params[:id])
    
    	@resource.destroy
    	flash[:notice] = "facility has been deleted successfully"
    
    redirect_to :action => 'list'
   end

	def update
    @resource = Resource.find(params['id'])
    if @resource.update_attributes(resource_param)
      flash[:notice] = "facilicity has been updated successfully"
      redirect_to :action => 'show', :id => @resource.id
      #raise @facility.facility_id.inspect
    else
      redirect_to :action => 'edit', :id => @resource.id
    end
     
   end
def show
 @resource = Resource.find(params[:id])
  facility_id = params[:facility_id]
end



end
