Rails.application.routes.draw do
  get "welcome/index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

# Config command
# gcloud beta runtime-config configs variables set \
#   --config-name=flex-env-config --is-text \
#   SECRET_KEY_BASE "d291c756a5667b4ce0d2154794a63491b17d5243b430731cd7feda9e6b7ec7517d253070f7e064855308e2e080894ef008950548387c88723693d1596f50ced2"

  # Defines the root path route ("/")
  root "welcome#index"
end
