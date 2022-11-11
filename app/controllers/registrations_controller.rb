class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    '/businesses' # Or :prefix_to_your_route
  end

  def after_inactive_sign_up_path_for(resource)
    '/businesses' # Or :prefix_to_your_route
  end

  def after_update_path_for(resource)
    '/users/edit' # Or :prefix_to_your_route
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name last_name avatar])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[first_name last_name avatar])
  end
end
