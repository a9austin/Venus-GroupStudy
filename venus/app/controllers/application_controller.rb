class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :configure_devise_params, if: :devise_controller?
  protect_from_forgery with: :exception
  def after_sign_in_path_for(resource)
    user_path(current_user)
  end
  def configure_devise_params
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:name, :usernamee, :email, :password, :password_confirmation)
    end
  end
end
