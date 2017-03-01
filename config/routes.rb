Rails.application.routes.draw do
  devise_for :companies
  resources :companies, only: [:index] do
    resources :members, only: [:new, :create]
  end
  resources :products
  root "products#index"
end
