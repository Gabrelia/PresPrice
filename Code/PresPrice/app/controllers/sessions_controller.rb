class SessionsController < ApplicationController
	def new 
	end

	def create
  		@user = User.find_by_email(params[:session][:email])
  	 
  	 if params[:session][:email].blank? || params[:session][:password].blank?
              redirect_to '/'
              return
     end 

	  if @user && @user.authenticate(params[:session][:password])
	    session[:user_id] = @user.id
	    redirect_to '/search'
	  else
	    redirect_to 'login'
		  end 
	end

	def destroy 
	  session[:user_id] = nil 
	  redirect_to '/' 
	end
		
end
