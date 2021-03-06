Rails.application.routes.draw do

  root :to => 'questions#index'

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :sessions
  resources :users
  resources :searches

  resources :questions do
    resources :answers, :except => [:index]
  end
  resources :answers, :except => [:index] do
    resources :votes, :except => [:index]
  end
end
