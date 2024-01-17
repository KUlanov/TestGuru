class ApplicationController < ActionController::Base
  #protect_from_forgery with: :expection
  
  before_action :authenticate_user!
  
private

  def after_sign_in_path_for(user)
    if user.type = 'admin'
      admin_tests_path
    else
      user_root_path
    end
  end

end