Rails.application.routes.draw do
  root "pages#home"

  namespace "tabs" do
    resource :profile, only: [:show], controller: :profile
    resource :info, only: [:show], controller: :info
    resources :notifications, only: [:index]
  end
end
