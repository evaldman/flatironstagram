Rails.application.routes.draw do
  
  get 'picture_tags/new'
## Picture routes ##
get '/pictures', to: 'pictures#index', as: 'pictures'
get '/pictures/new', to: 'pictures#new', as: 'new_picture'
post '/pictures', to: 'pictures#create'
get '/pictures/:id', to: 'pictures#show', as: 'picture'
delete '/pictures/:id', to: 'pictures#destroy'

## User routes ##
get '/users', to: 'users#index', as: 'users'
get '/users/new', to: 'users#new', as: 'new_user'
post '/users', to: 'users#create'
get '/users/:id', to: 'users#show', as: 'user'
get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
patch '/users/:id', to: 'users#update'

## Comments routes ##
get '/comments/new', to: 'comments#new', as: 'new_comment'
post '/comments', to: 'comments#create'

## Tags routes ##
get '/tags', to: 'tags#index', as: 'tags'
# get '/tags/new', to: 'tags#new', as: 'new_tag'
# post '/tags', to: 'tags#create'
get '/tags/:id', to: 'tags#show', as: 'tag'


end