Rails.application.routes.draw do

  root to: 'pages#index'
  get '/home' => 'pages#home'

  resources :tasks
  resources :projects
  resources :contexts, only: [:index]

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

end
