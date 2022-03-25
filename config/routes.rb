# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, defaults: { format: :json },
  controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations'
  }

  resources :volunteers
  # resources :likes
  resources :posts do
    resources :comments, only: [:create, :destroy, :index]
    resources :likes, only: [:create]
  end
  # resources :users, only: [:index, :show]
  resources :user, only: [:index, :show] do
    resources :posts, only: [:create, :index, :show]
  end 
  # resources :sessions, only: [:create]
  # resources :registrations, only: [:create]
  # delete :logout, to: "sessions#logout"
  # get :logged_in, to: "sessions#logged_in"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"
end
