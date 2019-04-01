Rails.application.routes.draw do
  resources :rents
  resources :members
  resources :cassettes
  resources :casts
  resources :movies
  resources :actors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
