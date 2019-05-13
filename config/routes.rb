Rails.application.routes.draw do
  root 'homes#index'
  resources :articles
  resources :users, defaults: { format: :json }
  # resources :users
  # get 'homes/index'
  # get 'users/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
