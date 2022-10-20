Rails.application.routes.draw do
  resources :users do
    resources :posts
  end

  devise_for :users
  resources :tags
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "posts#index"
end
