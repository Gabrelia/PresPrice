module SessionsHelper
  def current_user 
    @current_user ||= User.find(session[:user_id]) if session[:user_id] 
    rescue ActiveRecord::RecordNotFound
  end
  
  def require_user 
    redirect_to '/login' unless current_user 
  end
end