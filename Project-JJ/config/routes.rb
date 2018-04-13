Rails.application.routes.draw do
  resources :users
  resources :guests
  resources :wishlists
  resources :projects
  resources :promises
  resources :admins
  resources :user_profiles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
