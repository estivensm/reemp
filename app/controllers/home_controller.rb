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
    puts "accion indexxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
  end

  def search
    categoria = Category.where(name: "Salud")
    @category = Specialty.where(id: params[:category_id]).where(category_id: categoria).first

    catemas = Category.where(name: "Mascotas")
    @especialidad = Specialty.where(category_id: catemas).first

    @ciudad = params[:city]
    puts @ciudad

    if @category.present?
      redirect_to buscador_path(@category.name, @ciudad)

    elsif @especialidad.present?
      redirect_to buscador_path(@especialidad.name, @ciudad)
    end

    #redirect_to buscador_path(@category.name, @especialidad.name, @search1)
  end

  def inicio
  	
  end

  def buscador
   @ciudad = params[:specialties]
   @categorias = params[:category]
  end

  def user_contact
    
  end

  def reemper_home
      
  end

  def reemper_registers
    @reempers = Reemper.all
    render :layout => "admin" 
  end

  def admin_home
    render :layout => "admin" 
  end

  def admin_contact
    @contacts = Contact.all.paginate(:page => params[:page], :per_page => 10)
    render :layout => "admin" 
  end

  def admin_users
    @users = User.all.paginate(:page => params[:page], :per_page => 10)
    render :layout => "admin" 
  end

  def all_admins
    @admins = Admin.all.paginate(:page => params[:page], :per_page => 10)
    render :layout => "admin" 
  end

end
