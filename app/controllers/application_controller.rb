class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :get_all_facilities
  before_action :get_provided_services
  # get all facilities  
  def get_all_facilities
  	  @allfacilities = Facility.all
  	  if session[:login_status] == 'logged in' 
  	  	#raise session[:username].inspect
  	  else 
  	  session[:login_status] = 'not logged in'
  	  end
  	  if session[:username].blank?
  	  else
  	  	#raise session[:username].inspect
  	  end

  	  #raise session[:login_status].inspect
    
      #This can be written as follows:
      # session[:login_status] = 'not logged in' unless session[:login_status] == 'logged in'
      # @allfacilities = Facility.all
    
  	  
  end
  def get_provided_services
     @surgery = 0
     @fp = 0
     @maternity = 0
     @dental = 0
     @other = 0
     @allservices = 0
     services_provided = FacilityService.all
     services_provided.each do |s|
     case s.service_id  

     when 1
      @surgery += 1
    when 2
      @fp += 1
    when 3
      @maternity += 1
    when 4
      @dental += 1
    else
      @other += 1
    end
    @allservices += (@surgery + @fp + @maternity + @dental + @other)
      
    end
    
  end
end
