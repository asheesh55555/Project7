class ApplicationController < ActionController::Base


	before_action :authenticate_user!
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  
   def after_sign_in_path_for(resource)
   	
    new_post_path
  end
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :surname, :mobile_number, :birth_day, :gender])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :surname, :mobile_number, :birth_day, :gender])
  end
end
