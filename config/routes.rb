Rails.application.routes.draw do
  get 'bankings/index'
  get 'bankings/show'
  get 'bankings/new'
  get 'bankings/create'
  get 'bankings/edit'
  get 'bankings/update'
  get 'bankings/destroy'
  get 'bankings/controller_transfer'
  get 'bankings/index'
  get 'bankings/repository_transfers'
  get 'bankings/destroy_transfer'
  get 'bankings/show_tranfers'
  get 'bankings/create_transfer'
  devise_for :users
  root to: 'pages#home'
end
