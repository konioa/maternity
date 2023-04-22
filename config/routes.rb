Rails.application.routes.draw do

  devise_for :users
  get 'tops', to: 'tops#index'
  root to: 'articles#index'
  resources :articles
end
