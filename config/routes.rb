Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/me', to: '/users#show'
  post '/signup', to: 'users#create'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/sessions/create', to: 'sessions#create'
  get '/sessions/destroy', to: 'sessions#destroy'
  get '/users/create', to: 'users#create'

end