class LoginsController < ApplicationController
  skip_before_filter :perform_basic_auth, :only => :logout
  
  def login
    
  end
  
  def authenticate
    # parameters = params.require(:personel).permit(:username, :password)
     
      #username = parameters['username'
     # password = parameters['password']
    username = params[:personel][:username]
    password = params[:personel][:password]

    personel = Personel.where(username: username).first
    

  # if username.present? and password.present?
    if personel and personel.password_matches?(password)
     
      redirect_to :action => 'index'

      
    elsif 
        flash[:error] = 'The username or password is incorrect. Please contact your Administrator.'
        redirect_to :action => 'login'
    end

   #end
		#flash[:error] = 'That username and/or password is not valid.'
      	#redirect_to "/login"
  end

end