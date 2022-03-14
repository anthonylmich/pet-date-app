Rails.application.routes.draw do
  #User Routes
  get '/users' => "users#index"
  get '/users/:id' => "users#show"
  post "/users" => "users#create" #(User Signup)
  patch "/users" => "users#update"
  delete "/users" => "users#destroy"

  #Session Routes (Login)
  post "/sessions" => "sessions#create"

  #Pet Routes
  get '/pets' => "pets#index"
  get '/pets/:id' => "pets#show"
  post "/pets" => "pets#create"
  patch "/pets/:id" => "pets#update"
  delete "/pets/:id" => "pets#destroy"

  #Conversation Routes
  get '/conversations' => "conversations#index" #(index but only for the users conversation not all conversations.)
  get '/conversations/:id' => "conversations#show"
  post "/conversations" => "conversations#create"
  delete "/conversations/:id" => "conversations#destroy"

  #Message Routes
  get '/messages' => "messages#index" #(only for the messages pretaing to that conversation.)
  post "/messages" => "messages#create"
  patch "/messages/:id" => "messages#update"
  delete "/messages/:id" => "messages#destroy"

end
