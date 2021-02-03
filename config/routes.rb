Rails.application.routes.draw do
  get 'searchs/search'
  devise_for :users
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  resources :users
  resources :books
end