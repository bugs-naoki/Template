Rails.application.routes.draw do
  resources :products do
    resources :product_pictures, only: [:show]
  end
  resources :product_categories
  namespace :mypage do
    root to: "index#index"
  end
  devise_for :users
  root to: 'index#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
