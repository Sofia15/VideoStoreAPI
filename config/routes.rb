Rails.application.routes.draw do
  get "zomg", to: "movies#zomg"
  get "customers", to: "customers#index", as: "customers"
  get "movies", to: "movies#index", as: "movies"
  get "movies/:title", to: "movies#show"
end
