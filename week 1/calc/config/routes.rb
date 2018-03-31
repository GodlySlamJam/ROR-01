Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/calculator", to: "calc#index"
  post "/calculate", to: "calc#calculate"
  #post "/multiply", to: "calc#multiply"
end
