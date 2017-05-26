Rails.application.routes.draw do
  get 'users/index'
  get 'users/validate'
  get '/signin', to: 'users#signin'
  post '/signin', to: 'user#validate'

  resources :users
  	

  end
