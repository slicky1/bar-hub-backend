Rails.application.routes.draw do
  resources :items
  resources :orders
  resources :customers
  resources :brands
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
