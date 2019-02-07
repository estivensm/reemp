class ApplicationController < ActionController::Base
before_action :configure_permitted_parameters, if: :devise_controller?
  protected

  def configure_permitted_parameters
    [:account_update,:sign_up].each do |metodo|
    devise_parameter_sanitizer.permit(metodo, keys: [:names, :user_name, :last_names, :phone, :avatar, :city, :state, :user_type, :name, :last_name ])
   end
  end

  layout :layout_for_selection
	protected
	
	def layout_for_selection
		if controller_name == 'sessions'  || controller_name == 'passwords' 
		      'application'
		elsif controller_name == 'registrations'

		    if action_name == "new" || action_name == "create"
		            'application'
		    else
		     'user'
		    end
		 else
		  'user'
		end
    end

  def after_sign_in_path_for(resource)
    if user_signed_in?
        reeper_home_path
      elsif admin_signed_in?
        admin_home_path
        else
        root_path        
    end 
  end


end

