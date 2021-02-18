Rails.application.routes.draw do
  resources :purchases, only: :create
  resources :buildings, only: [:new, :create, :index]
  root 'buildings#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
