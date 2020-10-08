Rails.application.routes.draw do
  
  root 'welcome#home'

  resources :students, only: [:index, :show, :new, :create]

end
