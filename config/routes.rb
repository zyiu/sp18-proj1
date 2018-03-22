Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers, :pokemon
  patch '/capture/:id', to: 'pokemons#capture', as: 'capture'
  patch '/damage/:id', to: 'pokemons#damage', as: 'damage'
  get '/new', to: 'pokemons#new', as: 'new'
  post '/create', to: 'pokemons#create', as: 'create'
end
