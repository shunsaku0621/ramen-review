Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#index'
  resources :ramen_shops do
    resources :reviews, only: [:index, :create]
  end
end
