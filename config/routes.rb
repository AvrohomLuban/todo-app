Rails.application.routes.draw do

  get "/todos", to: "todos#index"
  get "/todos/new", to: "todos#new"
  post "/todos", to: "todos#create"
  get "/todos/:id/edit", to: "todos#edit"
  patch "/todos/:id", to: "todos#update"
  get "/todos/:id", to: "todos#show"
  delete "/todos/:id", to: "todos#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
