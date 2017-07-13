class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
    before_action :configure_permitted_parameters, if: :devise_controller?

  before_action :set_cart
  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :university])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end

  private

  def after_sign_out_path_for(resource_or_scope)
    root_path
  end

  def set_cart
    @user = current_user
    @purchases = @user.purchases if current_user
  end
end
