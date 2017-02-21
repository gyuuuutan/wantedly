Rails.application.routes.draw do
  devise_for :companies
  resources :companies, only: [:index]
  resources :products, only: [:index]
  root "products#index"
end
