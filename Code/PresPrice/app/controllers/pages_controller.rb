# Name: Gabby Johnson
# Course: CSC 415
# Semester: Fall 2017
# Instructor: Dr. Pulimood 
# Project name: PresPrice
# Description: The app is intended to provide the cheapest price of a medicine to users
# Filename: pages_controller.rb
# Description: To hold methods directed to different pages
# Last modified on: 11/10/17

class PagesController < ApplicationController

	def new
		@medicine = medicine.new
	end

	def home
		if params[:medicine]
    		@medicine = Medicine.where('medicine LIKE ?', "%#{params[:medicine]}%")
  		#else
    	#	@medicine = Medicine.all
  		end
	end

	def home_params
  params.require(:medicine).permit(:store, :medicine_price)
end

	def signup

	end

	def savedsearches

	end

	def generic1

	end

	def generic2

	end

end
