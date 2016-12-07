Rails.application.routes.draw do
  resources :visitors, only: [:index, :create, :show]
end
