class HomeController < ApplicationController
	before_action :authenticate_user!, :only => [:reemper_home]
  before_action :authenticate_admin!, :only => [:admin_home] 
	layout "application", :only => [:index, :user_contact]
  layout "user", :only => [:reemper_home, :admin_home]

  def index

  end

  def inicio
  	
  end

  def user_contact
    
  end

  def reemper_home
    
  end

  def admin_home
    
  end


end
