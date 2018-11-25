Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destory'

  root to: 'toppages#index'
  resources :toppages, only: %i[index]

  resources :users
    resources :selections do
      resources :voters
    end

  namespace :admin do
    resources :users
  end

  resources :prefs do
    resources :politicians
  end
end
