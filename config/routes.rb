Rails.application.routes.draw do
  root "articles#index"

  resources :articles do
    resources :comments
  end
end
  
  #resources is a method that maps all of the conventional routes for a collection of resources, such as articles
  #In this case, we substituted this:
  # root "articles#index"
  # get "/articles", to:"articles#index"
  # get "/articles/:id", to: "articles#show"

#for resources: articles

#We can inspect what routes are mapped by running the bin/rails routes command




# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
# :id = route parameter, it puts that value into the params Hash, which is accessible by the controller action
#example http://localhost:3000/articles/1