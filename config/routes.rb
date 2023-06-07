Rails.application.routes.draw do
  namespace :admin do
    resources :bookings, only: %i[index edit update destroy]
  end

  resources :users, only: %i[show]
  resources :bookings, only: %i[index new create]
end
