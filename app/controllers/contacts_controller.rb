class ContactsController < ApplicationController
  before_action :set_contact, only: [:destroy]

  layout 'application'
  def index
  	@contact = Contact.all
  end


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
  	
  end

  private 

  def set_contact
  	@contact = Contact.find(params[:id])
  end

  def contact_params
    params.permit(:name, :email, :code, :category_id, :country, :city, :profession_id, :specialty_id, :instagram, :profession_name, :specialty_name)
  end

end
