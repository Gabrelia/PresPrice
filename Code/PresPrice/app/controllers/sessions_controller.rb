# Name: Gabby Johnson
# Course: CSC 415
# Semester: Fall 2017
# Instructor: Dr. Pulimood 
# Project name: PresPrice
# Description: The app is intended to provide the cheapest price of a medicine to users
# Filename: sessions_controller.rb
# Description: Validates if user is logged in or not.  If they are they are redirected to the main search page.
# Last modified on: 11/30/17
class SessionsController < ApplicationController
	def new 
	end

	def create
  		@user = User.find_by_email(params[:session][:email])
  	 
  	 if params[:session][:email].blank? || params[:session][:password].blank?
              redirect_to '/searchbar'
              return
     end 

	  if @user && @user.authenticate(params[:session][:password])
	    session[:user_id] = @user.id
	    redirect_to '/searchbar'
	  else
	    redirect_to '/login'
		  end 
	end

	def destroy 
	  session[:user_id] = nil 
	  redirect_to '/' 
	end
		
end
