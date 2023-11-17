Rails.application.routes.draw do
  root "habits#show"

  resources :habits, only: [:show] do
    member do
      post :plus
      post :minus
    end
  end

  get "up" => "rails/health#show", as: :rails_health_check

end
