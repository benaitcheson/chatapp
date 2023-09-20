Rails.application.routes.draw do
  resources :rooms
  resources :users
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'
  root 'rooms#index'
end
