Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'login', to: 'sessions#new', as: 'login'
  get 'sign_up', to: 'users#new', as: 'sign_up'
  get 'logout', to: 'sessions#destroy', as: 'logout'  
  
  resources :food
  resources :users
  resources :sessions
  resources :about_us
end