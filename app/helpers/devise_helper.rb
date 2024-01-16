module DeviceHelper

  def sign_for_user_path(user)
    if user.admin?
      redirect_to [:admin, @test]
    else
      redirect_to root_path
    end
    
end