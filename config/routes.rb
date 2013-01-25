Rxngif::Application.routes.draw do

  root :to => "Pictures#index"

  # get("/pictures", { :controller => "Pictures", :action => "index" })
  get "/pictures" => "Pictures#index"

  get "/pictures/new" => "Pictures#new"

  get "/pictures/:id", :controller => "Pictures", :action => "show"
end
