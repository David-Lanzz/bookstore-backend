Rails.application.routes.draw do
  resources :schools, only: [:index, :create, :show]
  resources :departments, only: [:index, :create, :show]
  resources :levels, only: [:index, :create, :show]
  resources :authors, only: [:create, :show]
  resources :books, only: [:create, :index]

  # root "authors#index"
end
