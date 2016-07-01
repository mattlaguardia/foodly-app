Rails.application.routes.draw do

  root to: 'users#index'
  get "restaurants/redeem", to: "restaurants#redeem", as: "redeem"

  resources :users
  resources :restaurants

  post "/users/:user_id/restaurants/:restaurant_id/like", to: "likes#create", as: "likes"
  post "/users/:user_id/restaurants/:restaurant_id/dislike", to: "dislikes#create", as: "dislikes"

  ## SESSIONS ROUTES ##
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  ## SEARCH ROUTES ##
  get "/search", to: "application#search"

  ##STRIPE ROUTES##
  resources :charges

  ## ABOUTME/CONTACT ROUTES##
  get "/aboutus", to: "users#about"
  get "/contact", to: "users#contact"


end
