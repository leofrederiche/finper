Rails.application.routes.draw do
  
  resources :movements
  resources :categories
  root "sessions#welcome"

  resources :users, only: [:new, :create]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create' 
  post 'logout', to: 'sessions#logout'
  

  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/login'
  # get 'sessions/welcome'
  # get 'users/new'
  # get 'users/create'  
end
