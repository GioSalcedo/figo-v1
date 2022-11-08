Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  root to: 'pages#home'

  resources :businesses do
    resources :bankings, only: %i[new create]
  end
  resources :earnings
  resources :egresses
  resources :accounts

  resources :bankings
  resources :savings
  resources :debts
  resources :budgets
end
