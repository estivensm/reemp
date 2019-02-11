class ContactoMailer < ApplicationMailer
	def contacto(contact) 
		@contact = contact
		mail(to: "reempers@reemp.co", subject: "Alguien nos contacto")
	end
end
