class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

protected

def configure_permitted_parameters
devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :firstname, :lastname, :address, :dept, :description, :motivation, :avatar, :zip, :city, :phone, :is_female, :birthday, :name, :type])
devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :firstname, :lastname, :dept, :description, :motivation, :avatar, :address, :zip, :city, :phone, :is_female, :birthday, :name, :type])
end

end
