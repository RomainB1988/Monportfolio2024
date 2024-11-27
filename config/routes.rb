Rails.application.routes.draw do
  root 'pages#home' # Page d'accueil
  post "send_contact_message", to: "contacts#create", as: "send_contact_message"

  # Routes pour les services de santé (Health check) et PWA
  get "up" => "rails/health#show", as: :rails_health_check
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end
