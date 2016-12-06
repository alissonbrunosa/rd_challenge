Rails.application.routes.draw do
  root 'home#index'

  get  "/contact", to: "contacts#new"
  post "/contact", to: "contacts#create"
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
