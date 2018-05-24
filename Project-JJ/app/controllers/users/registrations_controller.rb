class Users::RegistrationsController < Devise::RegistrationsController

  def sign_up_params
    params.require(:user).permit(:username, :description, :name,  :email, :password, :lastname, :telephone, :country, :profession, :age, :password_confirmation)
  end

  def account_update_params
     params.require(:user).permit(:username, :description, :name,  :email, :password, :lastname, :telephone, :country, :profession, :age, :password_confirmation, :current_password)
  end
end 
