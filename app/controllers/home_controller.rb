class HomeController < ApplicationController
	before_action :authenticate_user!, :only => [:reemper_home]
	layout "application", :only => [:index, :user_contact]

  def index

  end

  def inicio
  	
  end

  def reemper_home
  	
  end

  def user_contact
    
  end

end
