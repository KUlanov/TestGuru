class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  before_action :set_locale
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  def default_url_options
    { lang: I18n.locale }
  end

  
private

  def set_locale
    I18n.locale = I18n.locale_available?(params[:lang]) ? params[:lang] : I18n.default_locale
  end

  def after_sign_in_path_for(user)
    flash.notice = "Привет,#{user.first_name}"
    if user.admin?
      admin_tests_path
    else
      user_root_path
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:[:first_name, :last_name, :password, :password_confirmation, :email])
  end
end