Rails.application.routes.draw do
  get 'users/show'
  get 'home/about' => 'homes#about'
  devise_for :users
  resources :books
  root to: 'homes#top'
end
