

Rails.application.routes.draw do
  devise_for :users 	
  resources :user_projects
  resources :categories
  resources :user_roles
  resources :users
  resources :wishlists
  resources :projects
  resources :promises
  resources :user_profiles
  root 'application#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
