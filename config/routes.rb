Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  root to: 'pages#home'

  resources :businesses do
    resources :savings, only: %i[new create]
    resources :debts, only: %i[new create]
    resources :budgets, only: %i[new create]
  end
  resources :accounts do
    resources :bankings
  end

  resources :bankings do
    resources :earnings
    resources :egresses
  end

  resources :savings, except: %i[new create]
  resources :debts, except: %i[new create]
  resources :budgets, except: %i[new create]
end
