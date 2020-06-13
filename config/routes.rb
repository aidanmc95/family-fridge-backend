Rails.application.routes.draw do
  resources :user_fridges
  resources :comments
  resources :images
  resources :fridges
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
