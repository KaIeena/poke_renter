Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get 'pokemons', to: 'pokemons#index'
  resources :pokemons do
    resources :bookings, only: [:new, :create]

    resources :reviews, only: [:new, :create]

    collection do
      get :dropped
    end
  end
  resources :bookings, only: [:index, :destroy]
  resources :reviews, only: [:destroy]
end
