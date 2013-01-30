Rxngif::Application.routes.draw do

  root :to => "Pictures#index"

  # Create
  get "/pictures/new" => "Pictures#new", :as => "new_picture"
  post "/pictures" => "Pictures#create", :as => "pictures"

  # Read
  get "/pictures" => "Pictures#index", :as => "pictures"
  get "/pictures/:id" => "Pictures#show", :as => "picture"

  # Update
  get "/pictures/:id/edit" => "Pictures#edit", :as => "edit_picture"
  put "/pictures/:id" => "Pictures#update", :as => "picture"

  # Destroy
  delete "/pictures/:id" => "Pictures#delete", :as => "picture"

end
