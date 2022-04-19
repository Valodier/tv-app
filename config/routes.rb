Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get  "/shows" => "shows#index"
  post "/shows" => "shows#create"
  get  "/shows/:id" => "shows#show"
  patch "/shows/:id" => "shows#update"
  delete "/shows/:id" => "shows#destroy"
end
