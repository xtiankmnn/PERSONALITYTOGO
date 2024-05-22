Rails.application.routes.draw do
  get 'cards/index'
  devise_for :users
  root to: "pages#home"

  resources :users
  resources :personalities do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, except: [:new, :create]



    get "/test", to: "personalities#choose"  #-> custom new route for external test ans show personalities

    # custom edit - edit the current_user to set persnality_id
    patch "personalities/:id/assign", to: "personalities#assign"
end
