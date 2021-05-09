Rails.application.routes.draw do
  get 'search', to: 'store#search'
  resources :categories
  devise_for :users
  resources :products
  root 'pages#home'
  get 'store', to: 'store#index'
  get 'info', to: 'pages#info'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
