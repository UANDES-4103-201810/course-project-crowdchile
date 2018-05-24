

Rails.application.routes.draw do
  resources :user_fund_projects
  devise_for :users, :controllers => {:registrations => "users/registrations"}	
  resources :user_projects
  resources :categories
  resources :user_roles
  resources :users
  resources :wishlists
  resources :projects
  resources :promises
  root 'application#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
