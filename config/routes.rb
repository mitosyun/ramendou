Rails.application.routes.draw do
  get 'posts/show'
  get 'posts/index'
  devise_for :members
  root to: "homes#top"
  get "/homes/about" => "homes#about", as: "about"
  resources :members, only: [:show, :edit, :update]
  resources :posts, only: [:show, :index]
end

