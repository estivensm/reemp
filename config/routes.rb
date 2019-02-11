Rails.application.routes.draw do
  resources :subspecialties, :except => [:show]
  resources :specialties, :except => [:show]
  resources :professions, :except => [:show]
  resources :categories, :except => [:show]

  devise_for :users, :controllers => { :registrations => "users/registrations" }
  devise_for :admins, :controllers => { :registrations => "admins/registrations" }

  devise_scope :admin do

    #get "users/new_user", to: "users/admin#new_user", as: "new_user"
    #get "users/index", to: "users/admin#index", as: "usuarios"
    #get "users/editar_user/:id/", to: "users/admin#editar_user", as: "editar_user"
    #post "update_user", to: "users/admin#update_user", as: "update_user"
    get "new", to: "admins/registrations#new_form", as: "new"
    post "new_admin", to: "admins/registrations#create", as: 'new_admin'
    delete "destroy/:id", to: "admins/registrations#destroy", as: "destroy"

  end
  
  
  get 'home/index'
  get 'home/inicio'
  get "reemper/home", to: "home#reemper_home", as: "reeper_home"
  root "home#user_contact"
  get "reempinfohc", to: "contacts#index"
  post "create_contact", to: "contacts#create", as: "create_contact"
  get "admin/home", to: "home#admin_home", as: "admin_home"
  get "admin/contact", to: "home#admin_contact", as: "admin_contact"
  get "admin/reempers", to: "home#admin_users", as: "admin_users"
  get "admin/all_admins", to: "home#all_admins", as: "all_admins"
  get "browser/:especialidad", to: "home#search", as: "browser"
  delete "contact_delete/:id", to: "contacts#destroy", as: "contact_delete"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
