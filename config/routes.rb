Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  resources :books
  root to: 'homes#top'
end
