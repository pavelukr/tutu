Rails.application.routes.draw do
  resources :trains
  resources :railway_stations
  get 'main/menu'
  root 'main#menu'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
