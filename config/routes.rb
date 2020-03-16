Rails.application.routes.draw do
  
  get 'airplanes/homepage'
  devise_for :users
  root to: "airplanes#homepage"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
