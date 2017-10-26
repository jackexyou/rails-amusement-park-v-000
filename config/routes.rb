Rails.application.routes.draw do

  root 'welcome#home'

  resources :users
  resources :attractions

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  post '/rides/new' => 'rides#new'
end