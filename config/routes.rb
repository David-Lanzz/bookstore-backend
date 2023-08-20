Rails.application.routes.draw do
  resources :schools, only: [:index, :create, :show]
  resources :departments, only: [:index, :create, :show]
  resources :levels, only: [:index, :create]
  resources :authors, only: [:create, :show]

  # root "authors#index"
end
