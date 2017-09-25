class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :get_all_facilities
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
end
