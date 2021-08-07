Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#index'
  get 'homes/index'
  resources :ramen_shops
end
