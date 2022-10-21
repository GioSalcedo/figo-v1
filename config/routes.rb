Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :businesses
  resources :accounts do
    resources :bankings
  end

  resources :bankings do
    resources :incomes
    resources :egresses
  end

  resources :savings
  resources :debts
  resources :budgets
end
