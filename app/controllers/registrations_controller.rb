class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params #parameters komen in een prive method om sql injectie en x site scripting te voorkomen
    params.require(:user).permit(:first_name, :insertion, :last_name, :email, :password, :password_confirmation, :customer_role, :employee_role, :address, :zip, :city, :dob)
  end

  def account_update_params #parameters komen in een prive method om sql injectie en x site scripting te voorkomen
    params.require(:user).permit(:first_name, :insertion, :last_name, :email, :password, :password_confirmation, :customer_role, :employee_role, :address, :zip, :city, :dob, :current_password)
  end
end