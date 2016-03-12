Rails.application.routes.draw do
  get 'pages/overview'
  resources :metadata
  resources :settings
  resources :workflows
  resources :media
  resources :transcodes
  root to: 'pages#overview'
end
