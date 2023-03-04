Rails.application.routes.draw do
    get("/", { :controller => "application", :action => "homepage" })

    get("/recipes", { :controller => "recipes", :action => "index" })
    get("/recipes/latest", { :controller => "recipes", :action => "recent" })
    get("/recipes/toprated", { :controller => "recipes", :action => "best" })
    get("/recipes/:the_recipe_id", { :controller => "recipes", :action => "show"})

    get("/chefs", { :controller => "chefs", :action => "index" })

    get("/ingredients", { :controller => "ingredients", :action => "index" })


    post("/insert_comment_record", { :controller => "comments", :action => "create" })


      # User routes
    get("/user_sign_up", {:controller => "users", :action => "new_registration_form" })
    get("/user_sign_out", {:controller => "users", :action => "toast_cookies" })
    get("/user_sign_in", {:controller => "users", :action => "new_session_form" })
    post("/verify_credentials", {:controller => "users", :action => "authenticate" })

    # CREATE
    get("/insert_user_record", {:controller => "users", :action => "create" })

    # READ
    get("/users", {:controller => "users", :action => "index"})
    get("/users/:the_username", {:controller => "users", :action => "show"})

    # UPDATE
    get("/update_user/:the_user_id", {:controller => "users", :action => "update" })

    # DELETE
    get("/delete_user/:the_user_id", {:controller => "users", :action => "destroy"})

  end
