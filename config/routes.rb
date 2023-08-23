Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

    # get "/restaurants", to: "restaurants#index"
    # post "restaurants", to: "restaurants#create"
    # get "/restaurants/new", to: "restaurants#new", as: :new_restaurant
    # get "/restaurants/:id", to: "restaurants#show", as: :restaurant

  resources :restaurants, only: [:index, :create, :new, :show] do
    resources :reviews, only: [:new, :create]
  end
end
