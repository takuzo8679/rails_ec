# frozen_string_literal: true

Rails.application.routes.draw do
  resources :tasks
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'items#index'
  resources :items, only: %i[index show]

  resources :carts, only: %i[index create update destroy]

  namespace :admin do
    resources :items, only: %i[index new create destroy edit update]
  end
end
