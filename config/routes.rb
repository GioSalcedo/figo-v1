Rails.application.routes.draw do
  get 'businesses/index'
  get 'businesses/show'
  get 'businesses/new'
  get 'businesses/edit'
  get 'businesses/update'
  get 'businesses/destroy'
  get 'businesses/set_business'
  get 'businesses/business_params'
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
