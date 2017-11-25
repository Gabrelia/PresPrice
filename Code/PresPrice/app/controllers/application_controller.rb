class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SearchHelper, SessionsHelper, ApplicationHelper
  helper_method :SessionsHelper

  #helper_method :current_user 

#	def current_user 
#	  @current_user ||= User.find(session[:user_id]) if session[:user_id] 
#	end
#
#	def require_user 
#	  redirect_to '/login' unless current_user 
#	end
	 def respond_modal_with(*args, &blk)
	    options = args.extract_options!
	    options[:responder] = ModalResponder
	    respond_with *args, options, &blk
	  end
end
