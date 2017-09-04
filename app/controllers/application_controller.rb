class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # get all facilities 
  @allfacilities = Facility.all
end
