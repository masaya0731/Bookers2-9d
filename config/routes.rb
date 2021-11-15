Rails.application.routes.draw do
  get 'relationships/create'
  get 'relationships/destroy'
  # get 'users/show'
  # get 'homes/about'
  get "home/about", to: 'homes#about', as: :homes_about
  # post "users/:id", to: 'users#create'
  # post "books/:id", to: 'books#create'
  devise_for :users
  root to: 'homes#top'
  resources :users, only: [:show, :create, :index, :edit, :update]
  resources :books, only: [:show, :edit, :create, :index, :destroy, :update] do
    resources :book_comments, only:[:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
