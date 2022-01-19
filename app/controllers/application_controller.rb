class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:full_name, :user_name, :image, :email, :password) }
    devise_parameter_sanitizer.permit(:account_update) do |u|
      u.permit(:full_name, :user_name, :image, :website, :bio, :phone_number, :gender, :email, :password,
               :current_password)
    end
  end
end
