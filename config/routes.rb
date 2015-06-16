Rails.application.routes.draw do

  get '/welcome', to: 'users#welcome'
  get 'sessions/destroy', as: 'logout'
  post 'sessions/create', as: 'login'
  get 'sessions/create'

  post 'votes/upvote', as: 'upvote'
  post 'votes/downvote', as: 'downvote'

  delete 'boards/:id', to: 'boards#destroy', as: 'delete_board'
  delete 'links/:id', to: 'links#destroy', as: 'delete_link'
  resources :users
  resources :votes
  resources :links
  resources :comments
  resources :boards

  root 'users#welcome'
end
