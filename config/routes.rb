Makevention::Application.routes.draw do

 resources :users
 resources :people
 root 'people#index'
end
