Rails.application.routes.draw do
  get 'cards/index'
  devise_for :users
  root to: "pages#home"

  resources :users
  resources :personalities do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, except: [:new, :create]

end
