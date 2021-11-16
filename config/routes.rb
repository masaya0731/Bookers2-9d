Rails.application.routes.draw do
  get 'searches/search'
  devise_for :users

  root to: 'homes#top'
  get "home/about", to: 'homes#about', as: :homes_about

  resources :users, only: [:show, :create, :index, :edit, :update] do
    resource :relationships, only: [:create, :destroy]
      get :follows, on: :member
      get :followers, on: :member
  end

  resources :books, only: [:show, :edit, :create, :index, :destroy, :update] do
    resources :book_comments, only:[:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end
end