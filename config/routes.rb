Rails.application.routes.draw do
  get 'search/search'
  devise_for :users
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  resources :users
  resources :books
  get '/search', to: 'search#search'
end