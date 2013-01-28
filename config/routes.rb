Rxngif::Application.routes.draw do

  root :to => "Pictures#index"

  # Create
  get "/pictures/new" => "Pictures#new"
  post "/pictures" => "Pictures#create"

  # Read
  get("/pictures", {:controller => "Pictures", :action => "index", :as => "pictures_list"})

  # def pictures_url
      # return "http://localhost:3000/pictures"
  # end

  get "/pictures/:id" => "Pictures#show", :as => "single_picture"

  # Update
  get "/pictures/:id/edit" => "Pictures#edit"
  post "/edit_picture/:id" => "Pictures#update"

  # Destroy
  get "/delete_picture/:id" => "Pictures#delete"

end
