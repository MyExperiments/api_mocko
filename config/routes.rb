Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  resources :home, only: [:index]

  root 'home#index'
end
