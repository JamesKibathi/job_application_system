Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users

  resources :profiles

  resources :jobs

  # resources :job_applications

  # Login user
  post "/login", to: "login#create"

  #Apply job
  post "/apply", to: "job_applications#create"
  get "/applications", to: "job_applications#index"



  # Defines the root path route ("/")
  # root "articles#index"

end
