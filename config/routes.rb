Rails.application.routes.draw do
  resources :payments
  resources :orders
  resources :delivery_people
  resources :dishes
  resources :restaurants
  resources :addresses
  resources :users
  
end
