Rails.application.routes.draw do
  
  root 'sessions#sign_in'
  resources :sessions, only: [:sign_in, :create, :destroy]
  get '/auth/facebook/callback', to: 'sessions#create'
  get '/auth/github/callback', to: 'sessions#create'

  resources :students, only: [:index, :new, :create]

  resources :lists

  resources :courses, only: [:index, :show]

  resources :students, only: [:show] do 
    resources :lists
  end

end
