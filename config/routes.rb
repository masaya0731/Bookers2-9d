Rails.application.routes.draw do
  # get 'users/show'
  # get 'homes/about'
  get "home/about", to: 'homes#about', as: :homes_about
  # post "users/:id", to: 'users#create'
  # post "books/:id", to: 'books#create'
  devise_for :users
  root to: 'homes#top'
  resources :books, only: [:show, :edit, :create, :index, :destroy, :update]
  resources :users, only: [:show, :create, :index, :edit, :update]




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
