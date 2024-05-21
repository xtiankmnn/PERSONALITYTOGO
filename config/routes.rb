Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  resources :users
  resources :personalities do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, except: [:new, :create]

# #get 'signup', to: 'users#new'
 # post 'signup', to: 'users#create'
  #get 'login', to: 'sessions#new'
 # post 'login', to: 'sessions#create'
 #delete 'logout', to: 'sessions#destroy

end
