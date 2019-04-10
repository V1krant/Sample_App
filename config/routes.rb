Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  root 'static_pages#home'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  get    '/show_all',   to: 'users#showUsers'
  post   '/show_all',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
end