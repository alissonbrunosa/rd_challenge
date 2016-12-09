Rails.application.routes.draw do
  root 'home#index'

  get  "/contact", to: "contacts#new"
  post "/contact", to: "contacts#create"
  resources :products, only: [:show]
end
