class ContactoMailer < ApplicationMailer
	def contacto(contact) 
		@contact = contact
		mail(to: "salazar-moncada-estiven@hotmail.com", subject: "Alguien nos contacto")
	end
end
