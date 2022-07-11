# frozen_string_literal: true
Rails.application.routes.draw do
  get 'contact/index'
  root 'posts#index'

  resources :posts
  resources :pictures, only: %i[create destroy]
end
