Rails.application.routes.draw do
  root "pages#index"
  get "/pages" => "pages#index"

  resources :movies
  get "/random" => "movies#random"

  get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"
end
