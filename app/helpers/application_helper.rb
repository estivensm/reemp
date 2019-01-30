module ApplicationHelper

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
