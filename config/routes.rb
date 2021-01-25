Rails.application.routes.draw do
  

  


## Picture routes ##
get '/pictures', to: 'pictures#index', as: 'pictures'
get '/pictures/new', to: 'pictures#new', as: 'new_picture'
post '/pictures', to: 'pictures#create'
get '/pictures/:id', to: 'pictures#show', as: 'picture'

## User routes ##
get '/users/new', to: 'users#new', as: 'new_user'
post '/users', to: 'users#create'
get '/users/:id', to: 'users#show', as: 'user'





end