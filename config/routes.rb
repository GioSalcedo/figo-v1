Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users do
    resources :businesses do
      resources :bankings
      resources :earnings
      resources :egresses
      resources :debts
      resources :budgets
      resources :savings
      resources :accounts
    end
  end
end
