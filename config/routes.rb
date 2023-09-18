Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'

  resources :schools, only: [:index, :create, :show]
  resources :departments, only: [:index, :create, :show]
  resources :levels, only: [:index, :create, :show]
  resources :authors, only: [:create, :show]
  resources :books, only: [:create, :index]

  resources :auth do
    collection do
      get 'get_token', to: 'application#get_token'
    end
  end

  # root "authors#index"
end
