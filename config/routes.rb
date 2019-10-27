Rails.application.routes.draw do
  devise_for :users
  resources :parts
  resources :cars_parts
  #root 'pages#index'
  root 'cars_parts#index'
  get 'cars_parts/index'
  resources :cars
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
