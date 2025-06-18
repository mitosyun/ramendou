Rails.application.routes.draw do
  devise_for :members
  root to: "homes#top"
  get "/home/about" => "homes#about", as: "about"
  resources :members, only: [:show, :edit, :update]
  resources :posts, only: [:new, :create, :edit, :update, :show, :index, :destroy]
end

