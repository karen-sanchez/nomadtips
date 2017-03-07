Rails.application.routes.draw do

  get 'users/index'

  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "application#index"

  # match '/users',   to: 'users#index',   via: 'get'

  match '/users/:id',     to: 'users#show',       via: 'get'

  # devise_for :users, :path_prefix => 'd'
  # resources :users, :only =>[:show]
  
end
