Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/destroy'
  resources :users
  resources :votes
  resources :links
  resources :comments
  resources :boards

  root to: 'users#index'
end
