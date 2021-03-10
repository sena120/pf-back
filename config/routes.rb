Rails.application.routes.draw do
  resources :users
  resources :menulists
  resources :foodlists
  resources :buylists
  resources :menuitems
  resources :fooditems
  resources :buyitems
end
