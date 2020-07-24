Rails.application.routes.draw do
  resources :donations
  resources :questions
  resources :backpackers
  resources :trips
  devise_for :users
  root to: 'pages#home'
  get '/good', to: 'pages#good'
  get '/wekare', to: 'pages#wekare'
  get '/terms', to: 'pages#terms'
  get '/bank', to: 'pages#bank'
  get '/wallace', to: 'pages#wallace'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


