Rails.application.routes.draw do
  devise_for :members
  root to: "homes#top"
  get "/homes/about" => "homes#about", as: "about"
end
