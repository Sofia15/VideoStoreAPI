Rails.application.routes.draw do

#The endpoints your API will need
#The HTTP verbs each endpoint will use
#Any data that must be provided to the endpoint in order for it to do its work
  get "zomg", to: "movies#zomg"
# get "customers", to: "customers#index", as: "customers"
# get "movies", to: "movies#index", as: "movies"
# get "movies/:title", to: "movies#show"
end
