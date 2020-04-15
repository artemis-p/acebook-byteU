Rails.application.routes.draw do
  devise_for :users
  root to: 'welcome#index'
  get 'wall/index'
  get 'wall/:id', :controller => 'wall', :action => 'show', :as => 'wall' 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts do
    resources :comments
  end
  root 'welcome#index'
  
  resources :wall do

  end


end
