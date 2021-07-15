Rails.application.routes.draw do
  get 'home/about' => 'homes#about'
  devise_for :users
  resources :books
  root to: 'homes#top'
  resources :users
end
