Rails.application.routes.draw do
  resource :tasks, to: 'tasks#index'

  # get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
