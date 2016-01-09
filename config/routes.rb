Rails.application.routes.draw do
  
  devise_for :users
  resources :posts
  resources :favorities

  root to: "posts#index"
end
