class ApplicationController < ActionController::Base
  #protect_from_forgery with: :expection
  
  before_action :authenticate_user!
  
private
  
end