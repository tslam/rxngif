Rxngif::Application.routes.draw do

  root :to => "Pictures#index"

  # Create
  get "/pictures/new" => "Pictures#new"
  post "/pictures" => "Pictures#create"

  # Read
  get "/pictures" => "Pictures#index"
  get "/pictures/:id" => "Pictures#show"
end
