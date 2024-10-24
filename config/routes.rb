Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "home#index"

  resources :warehouses, only: [ :show ]
end
