Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'session#destroy'
  namespace :admin do
    resources :users
  end
  root 'tasks#index'
  resources :tasks
end
