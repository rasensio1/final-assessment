Rails.application.routes.draw do
  root 'welcome#index'
  get '/login', to: "sessions#new"
  get '/signup', to: "users#new"

  resources :users, only: [:create]
  
end
