Rails.application.routes.draw do
  #User Routes
  post "/users" => "users#create"

  #Session Routes
  post "/sessions" => "sessions#create"
end
