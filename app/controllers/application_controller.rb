class ApplicationController < ActionController::API
  module DeviseWhitelist
    extend ActiveSupport::Concern
  
    included do
      before_action :configure_permitted_parameters, if: :users_controller?
    end
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:password])
      devise_parameter_sanitizer.permit(:account_update, keys: [:password])
    end
  end
end
