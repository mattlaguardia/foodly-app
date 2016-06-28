Rails.application.routes.draw do

  root to: 'users#index'

  resources :users
  resources :restaurants

  post "/users/:user_id/restaurants/:restaurant_id", to: "likes#create", as: "likes"
  post "/users/:user_id/restaurants/:restaurant_id", to: "dislikes#create", as: "dislikes"

  resources :users do
  	resources :restaurants
  end

  ## SESSIONS ROUTES ##
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"


end
