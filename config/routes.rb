Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "personalities/assign", to: "personalities#assign"
  resources :personalities do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, except: [:new, :create]

  get "/test", to: "personalities#choose"

end
