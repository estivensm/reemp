module ApplicationHelper

	def select_documento
		[
	      ['Cédula de Ciudadanía', 'Cédula de Ciudadanía'],
	      ['Tarjeta de Identidad', 'Tarjeta de Identidad'],
	      ['Registro Civil de Nacimiento', 'Registro Civil de Nacimiento'],
	      ['Cédula de Extranjeria', 'Cedula de Extranjeria'],
	      ['Pasaporte', 'Pasaporte'],
	      ['Menor sin Identificación', 'Menor sin Identificación'],
	      ['Adulto sin Identificación', 'Adulto sin Identificación'],
	      ['Carnet Diplomático', 'Carnet Diplomático']
	     
	  	]
	end

	def get_lenguaje
		[
	      ['Ingles', 'Ingles'],
	     
	  	]
	end

	def select_academics
	    [
	      ['Univesitaria', 'Univesitaria'],
	      ['Tecnica', 'Tecnica'],
	      ['Bachiller', 'Bachiller']
	     
	    ]
	end



  	def select_level
  		[
  			["Pregrado","Pregrado"],
  			["Posgrado","Posgrado"],
  			["Especialista","Especialista"],
  			["Doctorado","Doctorado"]
  		]
  		
  	end

  	def select_level_academic
	  	[
	      ['Preescolar', 'Preescolar'],
	      ['educación básica primaria y básica secundaria', 'educación básica primaria y básica secundaria'],
	      ['educación media', 'educación media'],
	      ['educación superior', 'educación superior']
	    ]
  	end
    
    def get_date(fecha)
   
	    if fecha != nil
	        ds = fecha.strftime("%w") #Dia de la semana
	        y = fecha.strftime("%Y") #Año
	        dm = fecha.strftime("%d") #Dia del mes
	        m = fecha.strftime("%m") # Mes del Año
	        meses = {"01" => "Enero", "02" => "Febrero","03"=>"Marzo","04" => "Abril", "05" => "Mayo","06"=> "Junio" ,"07"=> "Julio", "08" => "Agosto", "09"=> "Septiembre" ,"10"=> "Octubre","11" => "Noviembre" ,"12" => "Diciembre" }
	        dias = {"7" => "Domingo", "1" => "Lunes","2"=>"Martes","3" => "Miercoles", "4" => "Jueves","5"=> "Viernes" ,"6" =>"Sabado"}
	        return  meses[m] + " " + dm + " del " + y 
	    #dias[ds] + ", " +
	     end 
   end

    def get_date_hora(fecha)

	    if fecha != nil
	        ds = fecha.strftime("%w") #Dia de la semana
	        y = fecha.strftime("%Y") #Año
	        dm = fecha.strftime("%d") #Dia del mes
	        m = fecha.strftime("%m") # Mes del Año
	        meses = {"01" => "Enero", "02" => "Febrero","03"=>"Marzo","04" => "Abril", "05" => "Mayo","06"=> "Junio" ,"07"=> "Julo", "08" => "Agosto", "09"=> "Septiembre" ,"10"=> "Octubre","11" => "Noviembre" ,"12" => "Diciembre" }
	        dias = {"0" => "Domingo", "1" => "Lunes","2"=>"Martes","3" => "Miercoles", "4" => "Jueves","5"=> "Viernes" ,"6" =>"Sabado"}
	        fecha.min < 10 ? min = "0" : min = ""
	        horat = fecha.hour > 12 ?   fecha.hour - 12 : fecha.hour
	        horati = fecha.hour > 12 ?   "pm" : "am"
	        fecha.hour < 10 ? hora = "0" : hora = ""
	        return "El " + dias[ds] + " " + dm + " de "+  meses[m] + " del "  + y + " a las " + hora + horat.to_s   + ":" + min + fecha.min.to_s + " " + horati + " Enviaste La Peticion "
	    #dias[ds] + ", " +
	    end

    end 

	def get_date_hora1(fecha)

	    if fecha != nil
	        ds = fecha.strftime("%w") #Dia de la semana
	        y = fecha.strftime("%Y") #Año
	        dm = fecha.strftime("%d") #Dia del mes
	        m = fecha.strftime("%m") # Mes del Año
	        meses = {"01" => "Enero", "02" => "Febrero","03"=>"Marzo","04" => "Abril", "05" => "Mayo","06"=> "Junio" ,"07"=> "Julo", "08" => "Agosto", "09"=> "Septiembre" ,"10"=> "Octubre","11" => "Noviembre" ,"12" => "Diciembre" }
	        dias = {"0" => "Domingo", "1" => "Lunes","2"=>"Martes","3" => "Miercoles", "4" => "Jueves","5"=> "Viernes" ,"6" =>"Sabado"}
	        fecha.min < 10 ? min = "0" : min = ""
	        horat = fecha.hour > 12 ?   fecha.hour - 12 : fecha.hour
	        horati = fecha.hour > 12 ?   "pm" : "am"
	        fecha.hour < 10 ? hora = "0" : hora = ""
	        return "El " + dias[ds] + " " + dm + " de "+  meses[m] + " del "  + y + " a las " + hora + horat.to_s   + ":" + min + fecha.min.to_s + " " + horati + " Se Reviso Tu Peticion "
	    #dias[ds] + ", " +
	    end

	 end 

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

	 	if (controller.controller_name == "home" && action_name == "reemper_home")
	 		@reemper = ["active", "", "", "", ""]

		 	elsif (controller.controller_name == "registrations")
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

	def remmper_have
		Reemper.where(user_id: current_user.id).present?
	end

	def consulting_room
		ConsultingRoom.where(user_id: current_user.id).present?
	end

	def get_academic(number)
		if number == "1"
			return "Bajo"

			elsif number == "2"
			return "Bajo"

			elsif number == "3"
			return "Mediano"

			elsif number == "4"
			return "Alto"

			elsif number == "5"
			return "Alto"
		end
	end

	def me
		usuario = User.where(id: current_user.id)
    	@is_me = Reemper.where(user_id: usuario).first
    	return @is_me
	end

	def get_state(state)
		if state == "pending"
			return "Pendiente de Responder"
		elsif state == "delivered"
			return "Respondido"
		end
	end

	def get_valoration(valoracion)
		if valoracion == 1
			return '<i class="text-warning fa fa-star"></i><i class="text-warning far fa-star"></i><i class="text-warning far fa-star"></i><i class="text-warning far fa-star"></i><i class="text-warning far fa-star"></i>'
		elsif valoracion == 2
			return '<i class="text-warning fa fa-star"></i><i class="text-warning fa fa-star"></i><i class="text-warning far fa-star"></i><i class="text-warning far fa-star"></i><i class="text-warning far fa-star"></i>'
		elsif valoracion == 3
			return '<i class="text-warning fa fa-star"></i><i class="text-warning fa fa-star"></i><i class="text-warning fa fa-star"></i><i class="text-warning far fa-star"></i><i class="text-warning far fa-star"></i>'
		elsif valoracion == 4
			return '<i class="text-warning fa fa-star"></i><i class="text-warning fa fa-star"></i><i class="text-warning fa fa-star"></i><i class="text-warning fa fa-star"></i><i class="text-warning far fa-star"></i>'
		elsif valoracion == 5
			return '<i class="text-warning fa fa-star"></i><i class="text-warning fa fa-star"></i><i class="text-warning fa fa-star"></i><i class="text-warning fa fa-star"></i><i class="text-warning fa fa-star"></i>'
		end
		
	end

	
end
