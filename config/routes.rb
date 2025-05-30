require "sidekiq/web"
Rails.application.routes.draw do
  # namespace :admin do
  #   get "dashboard/index"
  # end
  devise_for :users
  authenticate :user, lambda { |u| u.admin? } do
    mount Sidekiq::Web => "/sidekiq"
  end
  get "pages/report"
  post "report", to: "pages#report"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  namespace :admin do
    get "dashboard", to: "dashboard#index"
    get "user_profile", to: "dashboard#user_profile"
    get "products", to: "dashboard#products"
    get "reports", to: "dashboard#reports"
  end

  # Defines the root path route ("/")
  root "admin/dashboard#index"

  # devise_for :users, controllers: {
  #       sessions: 'users/sessions'
  #     }
end
