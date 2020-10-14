Rails.application.routes.draw do
  
  root 'sessions#sign_in'
  resources :sessions, only: [:sign_in, :create, :destroy]

  resources :students, only: [:index, :new, :create]

  resources :lists

  resources :students, only: [:show] do 
    resources :lists
  end

end
