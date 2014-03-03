Makevention::Application.routes.draw do

  resources :users
  resources :people
  resources :sessions
  resources :organizations
 root 'people#index'
end
