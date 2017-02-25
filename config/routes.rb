Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  resources :home, only: [:index]

  namespace :frontend do
    namespace :api do
      resources :apps, only: [:index]
    end
  end

  root 'home#index'
end
