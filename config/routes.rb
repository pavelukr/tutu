Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    resources :railway_stations do
      patch :update_position, on: :member
      patch :update_time, on: :member
    end
    resources :routes
    resources :trains do
      resources :railway_carriages, :tickets, shallow: true
    end
  end
  resource :search, only: [:show, :new, :edit] do
    post '/', to: 'searches#search'
  end
  get 'main/menu'
  root 'main#menu'
end
