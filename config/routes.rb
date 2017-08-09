Rails.application.routes.draw do
  devise_for :users

  #Homepage
  root to: 'pages#home'
  #About Page
  get '/about', to: 'pages#about'
  #Contact Page
  get '/contact', to: 'pages#contact'

end
