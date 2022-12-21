Rails.application.routes.draw do
  devise_for :users
  root to: "hotel_rooms#index"
  get '/dashboard', to: "pages#dashboard"
  delete "bookings/:id", to: "pages#destroy", as: :destroy_booking
  resources :hotel_rooms, only: [:index, :show] do
    resources :bookings, only: [:create]
  end
  resources :bookings, only: [:edit, :update]
end
