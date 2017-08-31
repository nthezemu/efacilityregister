class LoginsController < ApplicationController
  #skip_before_filter :perform_basic_auth, :only => :logout
  
  def login
    
  end
  
  def authenticate
    # parameters = params.require(:personel).permit(:username, :password)
     
      #username = parameters['username'
     # password = parameters['password']
    username = params[:personel][:username]
    password1 = params[:personel][:password]

    personel = Personel.where(username: username).first
    

  # if username.present? and password.present?
    #raise personel.inspect
    #raise password.inspect
    if personel.password.password_matches(password1)
     
      redirect_to :action => 'login'

      
    elsif 
        flash[:error] = 'The username or password is incorrect. Please contact your Administrator.'
        redirect_to :action => 'login'
    end

   #end
		#flash[:error] = 'That username and/or password is not valid.'
      	#redirect_to "/login"
  end

end