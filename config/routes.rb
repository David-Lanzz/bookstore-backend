Rails.application.routes.draw do
  post '/users', to: 'users#create', as: 'signup'
  post '/sessions', to: 'sessions#create', as: 'login'
  delete '/sessions', to: 'sessions#destroy', as: 'logout'

  resources :schools, only: [:index, :create, :show]
  resources :departments, only: [:index, :create, :show]
  resources :levels, only: [:index, :create, :show]
  resources :authors, only: [:create, :show]
  resources :books, only: [:index, :create]
  resources :categories, only: [:index, :create]
  resources :users, only: [:create, :confirm_user]
  resources :sessions, only: [:create, :destroy]

  root to: "schools#index"
end
