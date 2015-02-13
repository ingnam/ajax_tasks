Rails.application.routes.draw do
  resources :articles
  resources :tasks
  root 'tasks#index'
end
