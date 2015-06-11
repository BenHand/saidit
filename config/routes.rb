Rails.application.routes.draw do
  resources :users
  resources :votes
  resources :links
  resources :comments
  resources :boards
end
