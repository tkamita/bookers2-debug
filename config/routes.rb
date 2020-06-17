Rails.application.routes.draw do
  devise_for :users
  root 'home#top'
  get 'home/about'
  resources :books
  resources :users,only: [:show,:index,:edit,:update]
end