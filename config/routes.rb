Rails.application.routes.draw do
  get 'sessions/new'


  get 'signup',    to: 'users#new',             as: 'signup'
  get 'login',       to: 'sessions#new',        as: 'login'
  get 'logout',     to: 'sessions#destroy',  as: 'logout'

  resources :relationships
  resources :likes
  resources :comments
  resources :posts

  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
