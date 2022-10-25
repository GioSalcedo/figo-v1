class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    "/businesses" # Or :prefix_to_your_route
  end
end
