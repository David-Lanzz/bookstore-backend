Rails.application.routes.draw do
  resources :authors, only: [:index, :create]

  # root "authors#index"
end
