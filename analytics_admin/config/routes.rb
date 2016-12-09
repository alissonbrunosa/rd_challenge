Rails.application.routes.draw do
  root to: 'home#index'

  resources :visitors, only: [:index, :create, :show]
end
