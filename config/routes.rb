Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "application#main"

  resources :posts, only: [:index, :edit, :new, :create, :destroy]

  match '/users/:id',     to: 'users#show',       via: 'get'

  get 'users/index'

  get 'posts/index'

  get '/post/new' 

  get '/posts/show' 

  patch 'posts/:id', controller: 'posts', action: :update

end
