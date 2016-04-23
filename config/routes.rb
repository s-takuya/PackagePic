Rails.application.routes.draw do
  root 'postings#index'

  resources :postings, only: [:index, :new, :create]
end
