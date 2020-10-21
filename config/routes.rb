Rails.application.routes.draw do
  devise_for :users
  root 'home#top'
  get 'home/about'
  get '/searches' => 'searches#search'

  resources :users

  resources :posts do
  	resource :favorites, only: [:create, :destroy]
  	resources :post_comments, only: [:create, :destroy]
  end

  resources :relationships, only: [:create, :destroy]

  resources :users do
    member do
      get :followings, :followers
    end
  end

end
