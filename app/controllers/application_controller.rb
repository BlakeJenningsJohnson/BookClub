class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    #else the session[:user_id] is nil for a guest browser
  rescue ActiveRecord::RecordNotFound #rescue is cued by error from nil 
    @current_user = User.create
    session[:user_id] = @current_user.id
    @current_user
  end
end
