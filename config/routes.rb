Rails.application.routes.draw do
  root "static_pages#welcome"
  
  get 'static_pages/welcome'
  get 'static_pages/rules'
  get 'static_pages/disclaimer'

  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"

  resources :users
end
