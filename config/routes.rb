Rails.application.routes.draw do
  resources :subspecialties
  resources :specialties
  resources :professions
  resources :categories

  devise_for :users, :controllers => { :registrations => "users/registrations" }
  devise_for :admins, :controllers => { :registrations => "admins/registrations" }
  
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
  delete "contact_delete/:id", to: "contacts#destroy", as: "contact_delete"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
