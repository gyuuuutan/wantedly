Rails.application.routes.draw do
  devise_for :companies
  resources :companies, only: [:index]
  resources :products
  root "products#index"
end
