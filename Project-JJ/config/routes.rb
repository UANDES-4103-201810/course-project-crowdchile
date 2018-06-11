

Rails.application.routes.draw do
  resources :user_fund_projects
  devise_for :users, :controllers => {:registrations => "users/registrations", :omniauth_callbacks => "users/omniauth_callbacks"}	
  resources :user_projects
  resources :categories
  resources :user_roles
  resources :users
  resources :wishlists
  resources :projects
  resources :promises
  root 'application#index'
  post 'projects/search' => 'projects#search', as: 'search_projects'
  get 'projects/:id/promises' => 'projects#promises'
  get 'projects/:id/promises/new' => 'projects#promisesnew'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
