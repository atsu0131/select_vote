Rails.application.routes.draw do
  root to: 'toppages#index'
  resources :toppages, only: %i[index]
  
  resources :users, shallow: true do
    resources :elects do
      resources :votes
    end
  end

  namespace :admin do
    resources :users
  end
end
