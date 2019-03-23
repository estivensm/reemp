class HomeController < ApplicationController
	before_action :authenticate_user!, :only => [:reemper_home]
  before_action :authenticate_admin!, :only => [:admin_home, :admin_contact, :admin_users, :all_admins] 
	layout "application", :only => [:index, :user_contact]
  layout "user", :only => [:reemper_home]

  def index
    categoria = Category.where(name: "Salud")
    @specialties = Specialty.where(category_id: categoria).all

    catemas = Category.where(name: "Mascotas")
    @specmas = Specialty.where(category_id: catemas).all

    catecons = Category.where(name: "Construccion")
    @specate = Specialty.where(category_id: catecons).all

    catelegal = Category.where(name: "Legal")
    @specilegal = Specialty.where(category_id: catelegal).all

  end

  def search

    @categoria = params[:category_id]
    @especialidad = params[:specialties]
    @costru = params[:search2]
    @ciudad = params[:city]


    categoria = Category.where(name: "Salud")
    @category = Specialty.where(category_id: categoria).first

    catemas = Category.where(name: "Mascotas")
    especialidad = Specialty.where(category_id: catemas).first

    catecons = Category.where(name: "Construccion")
    @specate = Specialty.where(category_id: catecons).first

    #if @category.present?
     # redirect_to buscador_path(@category.name, @ciudad)

    ## redirect_to buscador_path(@especialidad.name, @ciudad)
    #end

    redirect_to buscador_path(@categoria, @especialidad, @ciudad)
  end

  def inicio
  	
  end

  def informacion

    if params[:categoria] == "Salud"

        categoria = Category.where(name: "Salud")
        @specialties = Specialty.where(category_id: categoria).all

        render json: @specialties

      elsif params[:categoria] == "Mascotas"

        catemas = Category.where(name: "Mascotas")
        @specmas = Specialty.where(category_id: catemas).all

        render json: @specmas

      elsif params[:categoria] == "Construccion"

        catecons = Category.where(name: "Construccion")
        @specate = Specialty.where(category_id: catecons).all

        render json: @specate

      elsif params[:categoria] == "Legal"  
        catelegal = Category.where(name: "Legal")
        @specilegal = Specialty.where(category_id: catelegal).all
        
        render json: @specilegal

    end

  end

  def buscador
   @specate = params[:specialties]
   @categorias = params[:category]
   @ciudad = params[:city]

    categoria = Category.where(name: "Salud")
    @specialties = Specialty.where(category_id: categoria).all
  end

  def user_contact
    
  end

  def reemper_home
      usuario = User.find(current_user.id)
      reempers = Reemper.where(user_id: usuario)
      @reemper_valoration = ReemperValoration.where(user_id: current_user.id).where(reemper_id: reempers)
  end

  def reemper_registers
    @reempers = Reemper.all
    render :layout => "admin" 
  end

  def admin_home
    render :layout => "admin" 
  end

  def admin_contact
    @contacts = Contact.all.paginate(:page => params[:page], :per_page => 6)
    render :layout => "admin" 
  end

  def admin_users
    @users = User.all.paginate(:page => params[:page], :per_page => 6)
    render :layout => "admin" 
  end

  def all_admins
    @admins = Admin.all.paginate(:page => params[:page], :per_page => 6)
    render :layout => "admin" 
  end

end
