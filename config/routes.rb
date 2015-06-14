Rails.application.routes.draw do

  get 'sessions/destroy', as: 'logout'
  post 'sessions/create', as: 'login'
  get 'sessions/create'
  post 'votes/upvote', as: 'upvote'
  post 'votes/downvote', as: 'downvote'

  resources :users
  resources :votes
  resources :links
  resources :comments
  resources :boards

  root 'users#index'
end
