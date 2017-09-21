class ServicesController < ApplicationController


	def utilities
      @utility=Utility.new

        if @utility.save
        flash[:notice] = "utility has been added successfully"
       end 
    end


	def resources
      @resource=Resource.new

        if @resource.save
        flash[:notice] = "resource has been added successfully"
       end 
    end

	def new
      @service=Service.new

        if @service.save
        flash[:notice] = "service has been added successfully"
       end 
    end


    def list
  	 @utility= Utility.all
  	 @resource =Resource.all
	end



 	def resource_list

  	 @resource =Resource.all
	end

	def service_list
 		
  	 @service =Service.all
	end

	def edit
		@utility= Utility.find(params['id'])
		
	end

	def show
		
	@utility= Utility.find(params['id'])

		
	end

   def delete
    @utility = Utility.find(params[:id])
    
    @utility.destroy
    flash[:notice] = "facility has been deleted successfully"
    
    redirect_to :action => 'list'
   end

end
