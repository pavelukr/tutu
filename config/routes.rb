Rails.application.routes.draw do
  resources :railway_stations, :routes
  resources :trains do
    resources :railway_carriages, only: [:index, :new, :create, :show, :destroy]
  end
  get 'main/menu'
  root 'main#menu'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
