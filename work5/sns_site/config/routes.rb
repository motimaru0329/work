Rails.application.routes.draw do
  root "home#index"

  devise_for :users

  resources :posts
  resources :favorites, only: [:create, :destroy]

  resource :mypage, only: [:show, :edit, :update]

end
