class ApplicationController < ActionController::Base
  #protect_from_forgery with: :expection
  
  before_action :authenticate_user!
  #before_action :admin_path_redirect
  
private

  def admin_path_redirect
    redirect_to admin_tests_path if current_user.type = 'Admin'
  end

end