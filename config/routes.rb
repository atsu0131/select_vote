Rails.application.routes.draw do
  root to: 'toppages#index'
  resources :toppages, only: %i[index]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destory'

  resources :users

  resources :selections do
    resources :voters do
      resources :vote_actions, only: [:create, :destroy]
    end
  end

  namespace :admin do
    resources :toppages
    resources :users
  end

  resources :prefs do
    resources :politicians
    resources :zones, only: [:index, :show] do
      resources :results
    end
  end
end
