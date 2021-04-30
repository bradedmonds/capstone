Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    #cities routes
    get "/cities" => "cities#index"
    get "/cities/:id" => "cities#show"

    #concerts routes
    get "/concerts/:id" => "concerts#index"

    #artists routes
    get "/artists/:id" => "artists#show"

    #venues routes
    get "/venues/:id" => "venues#show"
  end
end
