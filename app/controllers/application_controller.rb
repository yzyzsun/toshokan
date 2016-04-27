class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  private

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:sid, :name, :school_class])
      devise_parameter_sanitizer.permit(:account_update, keys: [:sid, :name, :school_class])
    end

    def admin_user
      redirect_to root_url unless current_user&.admin?
    end
end
