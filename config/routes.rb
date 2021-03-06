Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: "users/registrations"
  }

  get 'search/search'
  devise_for :users

  root to: 'homes#top'
  get 'home/about' => 'homes#about'

  resources :users
  resources :books do
   resource :favorites, only: [:create, :destroy]
   resources :comments, only: [:create, :destroy]
  end

  resources :users do
   resource :relationships, only: [:create, :destroy]
   get 'followings' => 'relationships#followings', as: 'followings'
   get 'followers' => 'relationships#followers', as: 'followers'
  end
  resources :books

  get 'chat/:id' => 'chats#show', as: 'chat'
  resources :chats, only: [:create]

  get '/search', to: 'search#search'
 main

end