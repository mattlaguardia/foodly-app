Rails.application.routes.draw do

  root to: 'users#home'

  resources :users
  
end
