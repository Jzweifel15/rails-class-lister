Rails.application.routes.draw do
  
  root 'sessions#sign_in'
  resources :sessions, only: [:sign_in, :create, :destroy]
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  #get '/auth/facebook/callback', to: 'sessions#create'
  #get '/auth/github/callback', to: 'sessions#create'
  

  resources :students, only: [:index, :new, :create]

  resources :lists

  resources :courses, only: [:index, :show, :new, :create]

  resources :students, only: [:show] do 
    resources :lists
  end

end
