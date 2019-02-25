Rails.application.routes.draw do
  resources :consulting_rooms, :except => [:edit]
  get "My/:name/Editar", to: "consulting_rooms#edit", as: "my_roms"
  patch "My/:name", to: "consulting_rooms#update", as: "update_room"
  resources :reempers, :except => [:index, :show]
  get "reempers/:name", to: "reempers#show", as: "reemper_registration"
  resources :subspecialties, :except => [:show]
  resources :specialties, :except => [:show]
  resources :professions, :except => [:show]
  resources :categories, :except => [:show]

  devise_for :users, :controllers => { :registrations => "users/registrations" }
  devise_for :admins, :controllers => { :registrations => "admins/registrations" }
  default_url_options :host => 'reemp.herokuapp.com' 
  devise_scope :admin do

    #get "users/new_user", to: "users/admin#new_user", as: "new_user"
    #get "users/index", to: "users/admin#index", as: "usuarios"
    #get "users/editar_user/:id/", to: "users/admin#editar_user", as: "editar_user"
    #post "update_user", to: "users/admin#update_user", as: "update_user"
    get "new", to: "admins/registrations#new_form", as: "new"
    post "new_admin", to: "admins/registrations#create", as: 'new_admin'
    delete "destroy/:id", to: "admins/registrations#destroy", as: "destroy"
    patch "editar_admin/:id", to: "admins/registrations#editar_admin", as: "editar_admin"
    post "update_admin", to: "admins/registrations#update_a", as: "update_admin"

  end
  
  
  get 'home/index'
  get "reemper/home", to: "home#reemper_home", as: "reeper_home"
  root "home#user_contact"
  post "create_contact", to: "contacts#create", as: "create_contact"
  get "admin/home", to: "home#admin_home", as: "admin_home"
  get "admin/contact", to: "home#admin_contact", as: "admin_contact"
  get "admin/users", to: "home#admin_users", as: "admin_users"
  get "admin/all_admins", to: "home#all_admins", as: "all_admins"
  get "buscador(/:category)(/:specialties)(/:city)", to: "home#buscador", as: "buscador"
  post "browser", to: "home#search", as: "browser"
  delete "contact_delete/:id", to: "contacts#destroy", as: "contact_delete"
  get "admin/all_reempers", to: "home#reemper_registers", as: "reemper_registers"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
