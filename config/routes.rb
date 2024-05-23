Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :personalities do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, except: [:new, :create]

  get "/test", to: "personalities#choose"
  patch "personalities/:id/assign", to: "personalities#assign"

end
