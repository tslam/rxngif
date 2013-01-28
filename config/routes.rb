Rxngif::Application.routes.draw do

  root :to => "Pictures#index"

  # Create
  get "/pictures/new" => "Pictures#new", :as => "new_picture"
  post "/pictures" => "Pictures#create", :as => "pictures"

  # Read
  get("/pictures", {:controller => "Pictures", :action => "index", :as => "pictures"})

  # The :as => "pictures" option causes Rails to define the following method:
  # def pictures_url
      # return "http://localhost:3000/pictures"
  # end

  get "/pictures/:id" => "Pictures#show", :as => "picture"

  # The :as => "picture" option causes Rails to define the following method:
  # def picture_url(id_number)
  #     return "http://localhost:3000/pictures/#{id_number}"
  # end


  # Update
  get "/pictures/:id/edit" => "Pictures#edit", :as => "edit_picture"
  put "/pictures/:id" => "Pictures#update", :as => "picture"

  # Destroy
  delete "/pictures/:id" => "Pictures#delete", :as => "picture"

end
