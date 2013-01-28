Rxngif::Application.routes.draw do

  root :to => "Pictures#index"

  # Create
  get "/pictures/new" => "Pictures#new", :as => "new_picture_form"
  post "/pictures" => "Pictures#create", :as => "create_picture"

  # Read
  get("/my_photos", {:controller => "Pictures", :action => "index", :as => "pictures_list"})

  # The :as => "pictures" option causes Rails to define the following method:
  # def pictures_url
      # return "http://localhost:3000/pictures"
  # end

  get "/pictures/:id" => "Pictures#show", :as => "single_picture"

  # The :as => "picture" option causes Rails to define the following method:
  # def picture_url(id_number)
  #     return "http://localhost:3000/pictures/#{id_number}"
  # end


  # Update
  get "/pictures/:id/edit" => "Pictures#edit", :as => "edit_picture_form"
  post "/edit_picture/:id" => "Pictures#update", :as => "update_picture"

  # Destroy
  get "/delete_picture/:id" => "Pictures#delete", :as => "delete_picture"

end
