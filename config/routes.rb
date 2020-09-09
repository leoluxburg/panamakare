Rails.application.routes.draw do
  resources :articles
  resources :videos
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
  get '/listas', to: 'pages#listas'
  get '/all_trips', to: 'pages#all_trips'
  get '/about_us', to: 'pages#about_us'
  get '/contact', to: 'pages#contact'
  get '/preguntas', to: 'pages#preguntas'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


