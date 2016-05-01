Rails.application.routes.draw do
  devise_for :users
  root 'products#index'
  get "/products", to: 'products#index'
  get "/products/new", to: 'products#new'
  post "/products", to: 'products#create'
  get "/products/:id/edit", to: 'products#edit'
  delete "/products/:id", to: 'products#destroy'
  patch "/products/:id", to: 'products#update'
  get "/products/:id", to: 'products#show'
  post "/search", to: 'products#search'

  get "/suppliers", to: 'suppliers#index'

  post "/orders", to: 'orders#create'
  get "/orders/:id", to: 'orders#show'
end
