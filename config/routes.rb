Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'login', to: 'sessions#new', as: 'login'
  get 'sign_up', to: 'users#new', as: 'sign_up'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  
  root to: 'sessions#new'
  
  get '/food/vegan'
  get '/food/vegetarian'
  get '/food/meat'
  get '/food/search'
  get '/food/meat-dishes'
  get '/food/vegan-dishes'
  get '/food/vegetarian-dishes'
  get '/food/vegan-recipes'
  get '/food/vegetarian-recipes'
  get '/food/meat-recipes'

  get '/recipe/:id', to: 'food#recipe', as: 'food'

  resources :food
  resources :users
  resources :sessions
 resources :about_us
  resources :food, only: :meat do
    member do
      post 'toggle_favorite', to: "food#toggle_favorite"
    end
  end

end

