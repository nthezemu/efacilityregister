class UtilitiesController < ApplicationController


def create
      @utility=Utility.new

        if @utility.save
        flash[:notice] = "utility has been added successfully"
       end 
    end



    def list
  	 @utility=Utility.all
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



   def utility_param
		 params.require(:utility).permit( :name )
		
	end

	def update
    @utility = Utility.find(params['id'])
    if @utility.update_attributes(utility_param)
      flash[:notice] = "facilicity has been updated successfully"
      redirect_to :action => 'show', :id => @utility.id
      #raise @facility.facility_id.inspect
    else
      redirect_to :action => 'edit', :id => @utility.id
    end
     
   end
   
	def show
	 @utility = Utility.find(params[:id])
end





end
