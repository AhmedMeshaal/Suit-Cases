class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:role, :name, :bio, :image, :phone, :lawyer, :status])
      devise_parameter_sanitizer.permit(:account_update, keys: [:role])
    end
    
    private

  # Overwriting the sign_out redirect path method
  def after_sign_out_path_for(users)
    new_user_session_path
  end
end
