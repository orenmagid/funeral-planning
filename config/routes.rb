Rails.application.routes.draw do
  get 'static_pages/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'users/summary', to: 'users#summary'

  resources :agents
  resources :expenses
  resources :funeral_homes
  resources :religions
  resources :users
  resources :funerals





  # get '/create_user', to: 'users#new'
  # post '/create_user', to: 'users#create'
  # get '/edit_user/:id', to: 'users#edit'
  # patch '/update_user/:id', to: 'users#update'
  # get '/users/:id', to: 'users#show', as: 'user'


  get 'home', to: 'users#show', as: :home
  root "static_pages#home"

  get 'access/login'
  post 'access/attempt_login'
  get 'access/logout'


end
