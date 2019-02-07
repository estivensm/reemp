class HomeController < ApplicationController
	before_action :authenticate_user!, :only => [:reemper_home]
  before_action :authenticate_admin!, :only => [:admin_home, :admin_contact, :admin_users, :all_admins] 
	layout "application", :only => [:index, :user_contact]
  layout "user", :only => [:reemper_home]

  def index

  end

  def inicio
  	
  end

  def user_contact
    
  end

  def reemper_home
    
  end

  def admin_home
    render :layout => "admin" 
  end

  def admin_contact
    @contacts = Contact.all.paginate(:page => params[:page], :per_page => 3)
    render :layout => "admin" 
  end

  def admin_users
    @users = User.all.paginate(:page => params[:page], :per_page => 3)
    render :layout => "admin" 
  end

  def all_admins
    @admins = Admin.all.paginate(:page => params[:page], :per_page => 3)
    render :layout => "admin" 
  end

end
