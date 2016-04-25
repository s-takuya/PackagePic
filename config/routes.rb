Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
  root 'postings#index'

  resources :postings, only: [:index, :new, :create]
end
