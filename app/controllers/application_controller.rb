class ApplicationController < ActionController::Base
  #protect_from_forgery with: :expection
  
  before_action :authenticate_user!
  
  helper_method :current_user,
                :logged_in?

private

  def authenticate_user!
    unless current_user
      cookies[:requested_path] = request.url
      redirect_to login_path, alert: 'Are you a Guru? Verify your Email and Password please'
    end
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def logged_in?
    current_user.present?
  end
end