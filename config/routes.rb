Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'

  get 'gallery', to: 'pages#gallery'
  get 'reviews', to: 'pages#reviews'
  get 'services', to: 'pages#services'
  get 'contact', to: 'pages#contact'

  post 'contact', to: 'pages#send_message'
end
