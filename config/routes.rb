Rails.application.routes.draw do
  resources :ingredients, only: [:show, :index]
  resources :recipes, only: [:index, :show, :new, :create]
  get "users/:id", to: "users#show", as: "user"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
