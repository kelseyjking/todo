Rails.application.routes.draw do
    get("/", { :controller => "application", :action => "homepage" })

    get("/recipes", { :controller => "recipes", :action => "index" })
    get("/recipes/latest", { :controller => "recipes", :action => "recent" })
    get("/recipes/toprated", { :controller => "recipes", :action => "best" })

    get("/chefs", { :controller => "chefs", :action => "index" })

    get("/ingredients", { :controller => "ingredients", :action => "index" })

  end
