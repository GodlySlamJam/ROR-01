Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/dungeons/", to: "raids#openraids"
  get "/dungeons/login", to: "account#login"
  get "/dungeons/signup", to: "account#create"

end
