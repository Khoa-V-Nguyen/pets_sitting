Rails.application.routes.draw do
  namespace :admin do
    resources :bookings, only: %i[index]
  end

  resources :bookings, only: %i[index new create]
end
