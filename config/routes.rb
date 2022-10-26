Rails.application.routes.draw do
  resources :boards
  
  devise_for :users
  resources :tags
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  resources :users do
    resources :posts, only: [:index, :show]
  end
  root "posts#index"
end
