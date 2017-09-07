class LoginsController < ApplicationController
  #skip_before_filter :perform_basic_auth, :only => :logout
  
  def login
       
  end
  def logout
      session.delete(:login_status)
      session.delete(:username)
      redirect_to action: 'index', controller: 'facilities'

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
         #session[:logged_in] = "logged_in"
         #session[:logged_in] = 'logged_in'
        #raise @login_status.inspect
        #@username = personel.username
        #raise @username.inspect
          #session[:login_status].delete
          session[:login_status] = 'logged in'
          session[:username] = personel.username
          #raise session[:login_status].inspect
          #@login_status = session[:login_status]
         redirect_to action: 'index', controller: 'facilities'
      
    else
        flash[:notice] = 'Username or password is incorrect. Please try again.'
        
        redirect_to :action => 'login'
    end

   #end
		#flash[:error] = 'That username and/or password is not valid.'
      	#redirect_to "/login"
  end

end