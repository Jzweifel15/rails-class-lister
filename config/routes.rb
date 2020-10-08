Rails.application.routes.draw do
  
  root 'sessions#sign_in'
  resources :sessions, only: [:sign_in, :create, :destroy]

  resources :students, only: [:index, :show, :new, :create]

end
