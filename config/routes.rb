Rails.application.routes.draw do

  get 'sessions/destroy', as: 'logout'
  post 'sessions/create', as: 'login'
  get 'sessions/create'

  post 'votes/upvote', as: 'upvote'
  post 'votes/downvote', as: 'downvote'

  delete 'boards/:id', to: 'boards#destroy', as: 'delete_board'

  resources :users
  resources :votes
  resources :links
  resources :comments
  resources :boards

  root 'users#index'
end
