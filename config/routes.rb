Rails.application.routes.draw do
  # Define your application routes per the DSL in http://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/api/v1/tasks", to: "api/v1/tasks#index"
  get "/api/v1/tasks/:id", to: "api/v1/tasks#show"
  get "/api/v1/showmethetasks", to: "api/v1/tasks#index"
  post "/api/v1/tasks", to: "api/v1/tasks#create"
  patch '/api/v1/tasks/:id', to: "api/v1/tasks#update"
  delete '/api/v1/tasks/:id', to: "api/v1/tasks#destroy"
end
