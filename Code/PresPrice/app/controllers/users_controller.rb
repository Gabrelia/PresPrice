# Name: Gabby Johnson
# Course: CSC 415
# Semester: Fall 2017
# Instructor: Dr. Pulimood 
# Project name: PresPrice
# Description: The app is intended to provide the cheapest price of a medicine to users
# Filename: index.html.erb
# Description: To create user account
# Last modified on: 11/30/17 
class UsersController < ApplicationController
	 helper_method :match_password

	def new
  		@user = User.new
	end

	def create 
	  @user = User.new(user_params) 
	  if @user.save 
	    #If user is validated user will be redirected to searchbar
	    session[:user_id] = @user.id 
	    redirect_to '/searchbar' 
	  else 
	    render :new
	    #redirected to signup '/signup' 
	  end 
	end

	private
  def user_params
  	#parameters for signup
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end
