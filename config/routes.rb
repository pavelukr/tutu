Rails.application.routes.draw do
  resources :railway_stations do
    patch :update_position, on: :member
    patch :update_time, on: :member
  end
  resources :routes
  resources :trains do
    resources :railway_carriages, shallow: true
  end
  resource :search, only: [:new, :show, :edit]
  get 'main/menu'
  root 'main#menu'
end
