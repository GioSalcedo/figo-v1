Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  root to: 'pages#home'

  resources :businesses do
    resources :savings, only: %i[new create]
    resources :debts, only: %i[new create]
    resources :budgets, only: %i[new create]
    resources :bankings, only: %i[new create]
  end

  resources :accounts do
    resources :earnings
    resources :egresses
  end

  resources :bankings, except: %i[new create]

  resources :savings, except: %i[new create]
  resources :debts, except: %i[new create]
  resources :budgets, except: %i[new create]
end
