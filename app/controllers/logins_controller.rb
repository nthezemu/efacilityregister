class LoginsController < ApplicationController
  #skip_before_filter :perform_basic_auth, :only => :logout
  
  def login
    
  end
  
  def authenticate
    # parameters = params.require(:personel).permit(:username, :password)
     
      #username = parameters['username'
     # password = parameters['password']

    personel = Personel.find_by(username:  params[:personel][:username])
    #raise personel.password.inspect

  # if username.present? and password.present?

      if personel.password == params[:personel][:password]
      # && personel.authenticate(params[:personel][:password])     
       
         redirect_to '/facilities/index'
      
    else
        flash[:error] = 'The username or password is incorrect. Please contact your Administrator.'
        
        redirect_to :action => 'login'
    end

   #end
		#flash[:error] = 'That username and/or password is not valid.'
      	#redirect_to "/login"
  end

end