# frozen_string_literal: true

class Admins::RegistrationsController < Devise::RegistrationsController
  before_action :set_admin, :only => [:destroy, :admin_edit, :update_a]
  respond_to :html, :js, :only => [:new, :update, :create]
  layout "admin", :except => [:new]
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  # def create
  #   super
  # end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  def create
    @admin = Admin.create(admin_params)

    respond_to do |format|
      if @admin.save
        format.js
      else
        format.html { render :new }
      end
    end
    
  end

  def update_a
    respond_to do |format|
      if @admin.update(admin_params)
        format.html { redirect_to all_admins_path }
        format.js
        puts "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
        
      else
        format.html { redirect_to all_admins_path }
        puts "noooooooooooooooooooooooooooooooooooooooooooooooooo"
      end
    end

  end


  def admin_edit
    respond_to do |format|
        format.js
    end
  end


  def update_admin
    
  end

  def new_form
    respond_to do |format|
        format.js
    end
  end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end

  def destroy
    if @admin.destroy
      redirect_to all_admins_path
      flash[:delete] = "El Administrador se elimino con"
      
    end
  end

  private 

  def after_update_path_for(resource)
    edit_admin_registration_path
  end

  def set_admin 
    @admin = Admin.find(params[:id])
  end

  def admin_params
    params.permit(:name, :user_name, :last_name, :avatar, :email, :password, :password_confirmation, :current_password)
  end

end
