# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root to: 'welcome#index'
  get 'wall/index'
  get 'wall/:id', controller: 'wall', action: 'show', as: 'wall'
  get '/posts/all', controller: 'posts', action: 'index', as: 'all_post'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts do
    resources :comments
  end
end
