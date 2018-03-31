Rails.application.routes.draw do
  post "/animals", to: "animals#create"
  get "/animals/new", to: "animals#new"
  # get "/animals/collection", to: "animals#collection"
    get "/animals", to: "animals#collection"
  get "/animals/:id", to: "animals#show"
end
