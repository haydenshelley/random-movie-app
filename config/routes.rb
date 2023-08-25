Rails.application.routes.draw do
  root "pages#index"
  get "/pages" => "pages#index"

  resources :movies
  get "/liked" => "movies#liked" 
  post '/movie/:id/like', to: 'movies#like', as: 'like'
  delete "/liked/:id" => "movies#unlike"

  get "/users" => "users#index"
  get "/users/:id" => "users#show"
  get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"

  put 'users/:id/friend', to: 'users#friend', as: 'friend'

end
