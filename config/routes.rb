Rails.application.routes.draw do
  root to: 'cocktails#index'

  resources :cocktails, only: %w[index show new create] do
    resources :doses, only: %w[new create]
  end
  resources :doses, only: [:destroy]
end
