Rails.application.routes.draw do

  get 'sessions/new'

  root 'static_pages#home'
  get  '/about',   to: 'static_pages#about'
  get  '/cheap',   to: 'static_pages#Cheap'
  get  '/mid',   to: 'static_pages#Mid'
  get  '/expensive',   to: 'static_pages#Expensive'
  get  '/buy',   to: 'static_pages#Buy'
  get  '/finish',   to: 'static_pages#Finish'
  get  '/micropost', to: 'static_pages#contact'
  get 'static_pages/news'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
  resources :microposts,          only: [:create, :destroy]
end 
