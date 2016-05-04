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
  get "/suppliers/new", to: 'suppliers#new'

  get "/carted_products", to: 'carted_products#index'
  post "/carted_products", to: 'carted_products#create'
  delete "/carted_products/:id", to: 'carted_products#destroy'

  post "/orders", to: 'orders#create'
  get "/orders/:id", to: 'orders#show'
  patch "orders/:id", to: 'orders#update'
end
