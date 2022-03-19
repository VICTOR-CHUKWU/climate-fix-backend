# frozen_string_literal: true

Rails.application.routes.draw do
  resources :volunteers
  # resources :likes
  resources :posts do
    resources :comments, only: [:create, :destroy, :index]
    resources :likes, only: [:create]
  end
  resources :users
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"
end
