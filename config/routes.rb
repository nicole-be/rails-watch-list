Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
 # get "/lists", to: "lists#index"
 # get "lists/new", to: "lists#new"
  #post "lists", to: "lists#create"

#get "lists/:id", to: "lists#show", as: "list"

 # get "lists/bookmarks/new", to: "bookmarks#new"
#  post "lists/bookmarks", to: "bookmarks#create"
 # delete "bookmarks/:id", to: "bookmarks#destroy"

 root to: "lists#index"
    resources :lists, only: [:index, :show, :new, :create, :destroy] do
    resources :bookmarks, only: [:new, :create]
  end

  resources :bookmarks, only: [:destroy]

end
