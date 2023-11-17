Rails.application.routes.draw do
  resources :habits, only: [:show]

  get "up" => "rails/health#show", as: :rails_health_check

  # root "posts#index"
end
