require 'sidekiq/web'
Rails.application.routes.draw do
  authenticate :user do
    mount Sidekiq::Web => 'sidekiq'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
