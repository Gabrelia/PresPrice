# Name: Gabby Johnson
# Course: CSC 415
# Semester: Fall 2017
# Instructor: Dr. Pulimood 
# Project name: PresPrice
# Description: The app is intended to provide the cheapest price of a medicine to users
# Filename: search_controller.rb
# Description: Defined methods that access views
# Last modified on: 11/30/17

class SearchController < ApplicationController
	before_action :require_user, only: [:index, :show]
	include SearchHelper

	#Search bar for one medicine
	def index
 		@medicines = Medicine.all
	end

	#Search bar for two medicines
	def index2

	end

	def results
	  #Results for one medicine search
	  @medicines = Medicine.all
	    if params[:search]
	    	#orders found medicine
	      @medicines = Medicine.search(params[:search]).order("created_at DESC")
	    end
	end

	
	def results2
		#Results for two medicine searches
		#creates separate medicines instances so they're printed separately
	  @medicines1 = Medicine.all
	    if params[:search1]
	      @medicines1 = Medicine.search(params[:search1]).order("created_at DESC")
	    end

      @medicines2 = Medicine.all
	    if params[:search2]
	      @medicines2 = Medicine.search(params[:search2]).order("created_at DESC")
	    end

	end

	def new
		@search = Search.new
	end


  private
  def allowed_params
    params.require(:search).permit!
  end

end




