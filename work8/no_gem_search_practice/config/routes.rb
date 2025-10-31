# config/routes.rb
Rails.application.routes.draw do
  root "users#new"

  resources :users, only: [:new, :create]

  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  resources :cookings, only: [:index, :show, :new, :create]
  resources :genres, only: [:new, :create]
end
