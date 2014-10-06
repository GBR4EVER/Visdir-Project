Visdir::Application.routes.draw do

  root :to => 'listings#index'
  
  resources :users, :listings
  
end
