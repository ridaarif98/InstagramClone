class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    before_action :configure_permitted_parameters, if: :devise_controller?
    
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:full_name,:user_name, :email, :password) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:full_name, :email, :password, :current_password) }
  end
end
