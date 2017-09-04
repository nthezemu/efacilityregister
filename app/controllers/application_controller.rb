class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # get all facilities 
  
  
  def getallfacilities
  	@allfacilities = Facility.all
  	raise @allfacilities.inspect
  end
end
