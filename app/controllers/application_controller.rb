class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: devise_controller?

  private

  def onfigure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :username
  end
end
