module ApplicationHelper

	def admin_menu

	 	@admin = ["", "", "", "", "", "", "", ""]

	 	if (controller.controller_name == "home" && action_name == "admin_home")
	 			@admin = ["active", "", "", "", "", "", "", ""]

		 	elsif  (controller.controller_name == "home" && action_name == "admin_users")
		 		@admin = ["", "active", "", "", "", "", "", ""]

		 	elsif (controller.controller_name == "home" && action_name == "")
		 		@admin = ["", "", "active", "", "", "", "", ""]

		 	elsif (controller.controller_name == "home" && action_name == "admin_contact")
		 		@admin = ["", "", "", "active", "", "", "", ""]

		 	elsif (controller.controller_name == "home" && action_name == "all_admins")
		 		@admin = ["", "", "", "", "active", "", "", ""]

		 	elsif (controller.controller_name == "registrations")
		 		@admin = ["", "", "", "", "", "active", "", ""]

		 	elsif (controller.controller_name == "subspecialties" || controller.controller_name == "categories" || controller.controller_name == "specialties" )
		 		@admin = ["", "", "", "", "", "", "", "active"]

	 	end

	 	return @admin
	 	
	end


	def user_menu

	 	@reemper = ["", "", "", "", ""]

	 	if (controller.controller_name == "home" && action_name == "admin_home")
	 		@reemper = ["active", "", "", "", ""]

		 	elsif  (controller.controller_name == "home" && action_name == "admin_contact")
		 		@reemper = ["", "active", "", "", ""]

		 	elsif (controller.controller_name == "home" && action_name == "admin_contact")
		 		@reemper = ["", "", "active", "", ""]

		 	elsif (controller.controller_name == "home" && action_name == "admin_contact")
		 		@reemper = ["", "", "", "active", ""]

		 	elsif (controller.controller_name == "home" && action_name == "admin_contact")
		 		@reemper = ["", "", "", "", "active"]

	 	end

	 	return @reemper
	 	
	end

	def resource 
		@resource ||= User.new
	end

	def resource_name
		:user
	end

	def resource_class
		User
	end

	def devise_mapping
	  Devise.mappings[:user]
	end

	def resource_name
	  devise_mapping.name
	end

	def resource_class
	  devise_mapping.to
	end

	def get_category
		Category.all.order(id: :desc)
	end

	def get_profession
		Profession.all
	end

	def get_special
		Specialty.all		
	end

	
end
