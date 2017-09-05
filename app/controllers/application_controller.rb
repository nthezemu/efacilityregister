class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :get_all_facilities
  # get all facilities  
  def get_all_facilities
  	  @allfacilities = Facility.all 
  	  
  end
end
