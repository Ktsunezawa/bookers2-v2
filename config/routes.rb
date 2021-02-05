Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  resources :users
  resources :books
  get 'chat/:id' => 'chats#show', as: 'chat'
  resources :chats, only: [:create]
end