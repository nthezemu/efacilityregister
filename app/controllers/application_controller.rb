class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :get_all_facilities
  # get all facilities  
  def get_all_facilities
  	  @allfacilities = Facility.all
  	  login_status = 'not logged in' 
  	  session[:logged_in]= login_status
  	  
  end
end
