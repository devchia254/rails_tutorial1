Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Command Line: "rails routes". This displays the routes in the web app
  # Uses RESTful functions like GET, POST, PUT, DELETE to create routes that provides access or a link to pages of the web app.
  
  # "posts" is getting from the posts_controller and referring to the index action from the controller
  # E.g. "posts" refers to "http://localhost:3000/posts", the index.html.erb is the assigned page
  get "posts", to: "posts#index"
  
  # E.g. "posts/new" refers to "http://localhost:3000/posts/new", the new.html.erb is the assigned page
  get "posts/new", to: "posts#new"
  get "posts/:id", to: "posts#show", as: :post

  post "posts", to: "posts#create"

end
