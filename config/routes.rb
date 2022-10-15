Rails.application.routes.draw do
  get 'accounts/index'
  get 'accounts/show'
  get 'accounts/new'
  get 'accounts/create'
  get 'accounts/edit'
  get 'accounts/update'
  get 'accounts/destroy'
  devise_for :users
  root to: 'pages#home'
end
