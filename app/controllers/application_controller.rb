class ApplicationController < ActionController::API
        include DeviseTokenAuth::Concerns::SetUserByToken
        before_action :configure_permitted_parameters, if: :devise_contlloer?
        def configure_permitted_parameters
                devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
        end
end
