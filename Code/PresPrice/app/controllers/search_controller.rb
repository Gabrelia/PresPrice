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
 		@medicines = Medicine.all
	end

	def index2

	end

	def results
		 @medicines = Medicine.all
    if params[:search]
      @medicines = Medicine.search(params[:search]).order("created_at DESC")
    else
      @medicines = Medicine.all.order('created_at DESC')
    end

    @medicines= @medicines.order("#{sort_column} #{sort_direction}")
	end

	def prices
		puts "Medicine name: #{params[:id]}"
		@medicines = Medicine.all
		#@medicine = Medicine.find(params[:id])
	end

	def show
		@search = Search.find(params[:id])
	end

	def new
		@search = Search.new
	end

	#def create
	#	@search = Search.new(allowed_params)
	#	if @search.save
	#		redirect_to searches_url, notice: "Successfully created product."
	#	else
	#		render :new
	#	end
	#end

	#def edit
    #	@search = Search.find(params[:id])
  	#end

  	def update
    	@search = Search.find(params[:id])
    if @search.update_attributes(allowed_params)
      redirect_to searches_url, notice: "Successfully created search."
    else
      render :edit
    end
  end

  def destroy
    @search = Search.find(params[:id])
    @search.destroy
    redirect_to searches_url, notice: "Successfully destroyed search."
  end

  private
  def allowed_params
    params.require(:search).permit!
  end
end




