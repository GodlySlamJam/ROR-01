Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post "/dungeons/", to: "dungeon#make"
  get "/dungeons/", to: "dungeon#openraids"
  get "/dungeons/create", to: "dungeon#create"
  post "/dungeons/play", to: "dungeon#play"
  get "/dungeons/login", to: "account#login"
  get "/dungeons/signup", to: "account#create"

end
