Rails.application.routes.draw do
  devise_for :user
  resources :products
  resources :order_items
  get 'cart', to: 'cart#show'
  get 'search', to: 'store#search'
  root 'store#index'
  get 'store', to: 'store#index'
  get 'info', to: 'pages#info'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
