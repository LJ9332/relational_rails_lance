Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  get "/vehicle_makes", to: "vehicle_makes#index"
  get "/vehicle_makes/:id", to: "vehicle_makes#show"
  get "/model_types", to: "model_types#index"
  get "/model_types/:id", to: "model_types#show"
  get "vehicle_makes/:vehicle_make_id/model_types", to: "make_models#index"
end
