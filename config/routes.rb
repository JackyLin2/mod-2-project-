Rails.application.routes.draw do
  root "sessions#new"
  resources :favorites
  resources :casts
  resources :celebrities
  resources :ratings
  resources :reviews
  resources :movies
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  get '/signup', to: 'users#new', as: 'signup'
  get '/login', to: 'sessions#new', as: 'login'
  get '/logout', to: 'sessions#destroy', as: 'logout'



  # get '/sessions/login', to: 'sessions#new', as: 'login'
  # post '/sessions', to: 'sessions#create', as: 'sessions'
  # delete '/sessions', to: 'sessions#destroy', as: 'logout'

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
