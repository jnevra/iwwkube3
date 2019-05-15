Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  root 'static_pages#home'
  get 'static_pages/help', to: 'static_pages#help'
  get 'about', to: 'static_pages#about'
  get 'welcome/index', to: 'welcome#index'
  get 'welcome/page', to: 'welcome#page'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
  resources :sessions, :only => [:new, :create, :destroy]
  resources :account_activations, only: [:edit]

end
