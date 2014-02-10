Makevention::Application.routes.draw do

  resources :users
  resources :people
  resources :sessions
 root 'people#index'
end
