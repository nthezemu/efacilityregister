class ServicesController < ApplicationController




	def new
      @service=Service.new
		 if @service.save
        flash[:notice] = "service has been added successfully"
       end 
    end


    def list
  	 @service= Service.all
	end


	def edit
		@service= Service.find(params['id'])
		
	end



	

  	 def delete
    	@service = Service.find(params[:id])
    
    	@service.destroy
    	flash[:notice] = "service has been deleted successfully"
    
   		redirect_to :action => 'list'
   end



   def service_param
		 params.require(:service).permit( :name )
		
	end

	def update
    @service = Service.find(params['id'])
    if @service.update_attributes(service_param)
      flash[:notice] = "service has been updated successfully"
      redirect_to :action => 'show', :id => @service.id
      #raise @facility.facility_id.inspect
    else
      redirect_to :action => 'edit', :id => @service.id
    end
     
   end
   
	
	def show
		
	@service= Service.find(params['id'])
	
	end



end
