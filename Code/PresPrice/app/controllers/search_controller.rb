# Name: Gabby Johnson
# Course: CSC 415
# Semester: Fall 2017
# Instructor: Dr. Pulimood 
# Project name: PresPrice
# Description: The app is intended to provide the cheapest price of a medicine to users
# Filename: search_controller.rb
# Description: Defined methods that access views
# Last modified on: 11/10/17

class SearchController < ApplicationController
	before_action :require_user, only: [:index, :show]
	include SearchHelper


	def index
		    @searches = Search.all
		    if params[:search]
		      @searches = Search.search(params[:search]).order("created_at DESC")
		    else
		      @searches = Search.all.order('created_at DESC')
		    end

		    @searches = @searches.order("#{sort_column} #{sort_direction}")
		  
	end



end
