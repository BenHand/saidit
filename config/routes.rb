Rails.application.routes.draw do

  get 'sessions/destroy', as: 'logout'
  post 'sessions/create', as: 'login'
  get 'sessions/create'

  resources :users
  resources :votes
  resources :links
  resources :comments
  resources :boards

  root 'users#index'
end
