Rails.application.routes.draw do
  
  get '/trips/search' => 'trips#search', as: 'search'
  post '/trips/search' => 'trips#search'
  resources :tickets
  resources :trips
  resources :passengers
  resources :aeroplanes
  get 'aeroplanes/homepage'
  devise_for :users
  root to: "aeroplanes#homepage"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
