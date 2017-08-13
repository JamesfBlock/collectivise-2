Rails.application.routes.draw do
  devise_for :users

  mount Attachinary::Engine => "/attachinary"

  #Homepage
  root to: 'pages#home'
  #About Page
  get '/about', to: 'pages#about'
  #Contact Page
  get '/contact', to: 'pages#contact'

  get '/cars', to: 'pages#cars'

  resources :users

  resources :collectibles

  resources :cars

end
