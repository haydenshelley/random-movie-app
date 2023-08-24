Rails.application.routes.draw do
  root "pages#index"
  get "/pages" => "pages#index"

  resources :movies
  get "/random" => "movies#random"

  post "/users" => "users#create"

  post "/sessions" => "sessions#create"
end
