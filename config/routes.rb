Rails.application.routes.draw do
  
  get 'posts/index'

  get 'posts/new'

  root to: "posts#index"
end
