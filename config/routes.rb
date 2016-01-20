Rails.application.routes.draw do
  root 'welcome#index'
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  get '/logout', to: "sessions#destroy"

  get '/signup', to: "users#new"
  post '/users', to: "users#create"

  resources :users, only: [:create]
  resources :lists, only: [:create]
  
end
