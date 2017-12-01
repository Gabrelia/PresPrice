# Name: Gabby Johnson
# Course: CSC 415
# Semester: Fall 2017
# Instructor: Dr. Pulimood 
# Project name: PresPrice
# Description: The app is intended to provide the cheapest price of a medicine to users
# Filename: application_controller.rb
# Description: Respond to model
# Last modified on: 11/30/17

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SearchHelper, SessionsHelper, ApplicationHelper
  helper_method :SessionsHelper

	 def respond_modal_with(*args, &blk)
	    options = args.extract_options!
	    options[:responder] = ModalResponder
	    respond_with *args, options, &blk
	  end
end
