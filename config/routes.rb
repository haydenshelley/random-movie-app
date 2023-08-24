Rails.application.routes.draw do
  resources :movies
  get "/random" => "movies#random"
end
