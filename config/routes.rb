Rails.application.routes.draw do
  root to: "home#show"

  resources :users, only: [:new, :create]

  # login
  resources :sessions, only: [:new]
end
