Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :agents
  resources :dispositions
  resources :expenses
  resources :funeral_homes
  resources :religions
  resources :service_types
  resources :users


end
