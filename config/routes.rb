Rails.application.routes.draw do
  resources :cocktails, only: %w[index show new create destroy] do
    resources :doses, only: %w[new create]
  end
  resources :doses, only: [:destroy]
  root to: 'cocktails#index'
end
