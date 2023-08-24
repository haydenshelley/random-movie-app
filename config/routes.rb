Rails.application.routes.draw do
  root "pages#index"
  get "/pages" => "pages#index"
  
  resources :movies
  get "/random" => "movies#random"
end
