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

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
