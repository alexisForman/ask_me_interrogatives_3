Rails.application.routes.draw do
  root "static_pages#welcome"
  
  get 'static_pages/welcome'
  get 'static_pages/rules'
  get 'static_pages/disclaimer'

  # get '/login', to: "sessions#new"
  # post '/login', to: "sessions#create"
  # delete '/logout', to: "sessions#destroy"

  get '/signup', to: "users#new_signup"
  post '/signup', to: "users#create_signup"
  delete '/logout', to: "users#destroy"

  get '/login', to: "users_logins#new_login"
  post '/login', to: "users_logins#create_login"
  delete '/logout', to: "users_logins#destroy"


  resources :users
  resources :users_logins
  resources :photos
end
