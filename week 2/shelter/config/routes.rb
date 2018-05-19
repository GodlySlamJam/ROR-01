Rails.application.routes.draw do
  post "/owners/", to: "owners#ocreate"
  get "/owners/", to: "owners#ownersall"
  get "/owners/all", to: "owners#ownersall"
  post "/animals", to: "animals#create"
  get "/animals/new", to: "animals#new"
  get "/owners/new-owner/", to: "owners#newer"

  # get "/animals/collection", to: "animals#collection"
  get "/animals", to: "animals#collection"
  post "/animals/editing", to: "animals#edit"
  post "/animals/check", to: "animals#check"
  get "/animals/:id", to: "animals#show"
end
