class ApplicationController < ActionController::Base
  #protect_from_forgery with: :expection
  
  before_action :authenticate_user!
  before_action :sign_for_user_path()
  
private
  
end