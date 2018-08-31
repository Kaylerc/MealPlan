Rails.application.routes.draw do

  root to: 'products#index'
  get 'pages/home'
  get 'pages/about'

  resources :users
  resources :products do
    resources :orders
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
