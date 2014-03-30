Makevention::Application.routes.draw do

  resources :users
  resources :people
  resources :sessions
  resources :organizations
  root to: 'people#index'
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
end
