

Rails.application.routes.draw do
  resources :user_fund_projects do
    member do
      get :confirm_email
    end
  end
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
  post 'categories/search' => 'categories#search', as: 'search_categories'
  get 'projects/:id/promises' => 'projects#promises', as: 'promisesp'
  get 'projects/:id/promises/new' => 'projects#promisesnew', as:'promisesnew'
  get '/:token/confirm_email/', :to => "user_fund_projects#confirm_email", as: 'confirm_email'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
