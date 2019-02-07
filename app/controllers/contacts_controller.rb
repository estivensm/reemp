class ContactsController < ApplicationController
  before_action :set_contact, only: [:destroy]
  skip_before_action :verify_authenticity_token, :only => [:create]

  def create
  	@contact = Contact.create(contact_params)

  	respond_to do |format|
      if @contact.save
        format.html { redirect_to contact_path }
        format.js
      else
        format.html { render :new }
      end
    end
  	
  end

  def destroy
  	if @contact.destroy
        redirect_to admin_contact_path
        flash[:delete] = "Eliminado"
      else 
        redirect_to admin_contact_path
    end
  end

  private 

  def set_contact
  	@contact = Contact.find(params[:id])
  end

  def contact_params
    params.permit(:name, :email, :code, :category_id, :country, :city, :profession_id, :specialty_id, :instagram, :profession_name, :specialty_name)
  end

end
