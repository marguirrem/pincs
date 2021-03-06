class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_params_devise, if: :devise_controller?

  protected

  def configure_params_devise
  	devise_parameter_sanitizer.for(:sign_up){|u| u.permit(:name,:email,:password,:password_confirmation)}
  	
  end
end
