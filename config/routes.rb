Rails.application.routes.draw do
  root to: 'toppages#index'
  resources :toppages, only: %i[index]

  resources :users
    resources :selections do
      resources :voters
    end

  namespace :admin do
    resources :users
  end
end
