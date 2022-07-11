# frozen_string_literal: true
Rails.application.routes.draw do
  root 'posts#index'
  get 'contact/index'

  resources :posts
  resources :pictures, only: %i[create destroy]
end
