Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  resources :home, only: [:index]

  namespace :frontend do
    namespace :api do
      resources :mock_apis, only: [:index, :create]
    end
  end

  root 'home#index'

  match 'mock_apis/:path', to: 'mock_apis#show', via: :all
end
