Rails.application.routes.draw do
  resources :subspecialties
  resources :specialties
  resources :professions
  resources :categories
  devise_for :users, :controllers => { :registrations => "users/registrations" }
  root 'home#index'
  get 'home/inicio'
  get "reemper/home", to: "home#reemper_home", as: "reeper_home"
  get "contact", to: "home#user_contact", as: "contact"
  post "create_contact", to: "contacts#create", as: "create_contact"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
