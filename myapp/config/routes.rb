Rails.application.routes.draw do


  resource :users, only: [:create]
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"

  resources :posts
  devise_for :users
  get 'welcome/index'
  get 'articles/indexApi'
  resources :articles do
    resources :comments
  end
  root 'welcome#index'

 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
