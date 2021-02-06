Rails.application.routes.draw do
  get 'search/search'
  devise_for :users
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  resources :users do
   resource :relationships, only: [:create, :destroy]
   get 'followings' => 'relationships#followings', as: 'followings'
   get 'followers' => 'relationships#followers', as: 'followers'
  end
  resources :books
Chat
  get 'chat/:id' => 'chats#show', as: 'chat'
  resources :chats, only: [:create]

  get '/search', to: 'search#search'
 main
end