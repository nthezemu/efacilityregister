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

end
