Rxngif::Application.routes.draw do

  get("/pictures", { :controller => "Pictures", :action => "index" })

end
