Rails.application.routes.draw do
  devise_for :companies
  resources :companies, only: [:index]
  root "companies#index"
end
