Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/gallery'
  get 'pages/reviews'
  get 'pages/services'
  get 'pages/contact'
  devise_for :users
  get 'home/index'
  root 'home#index'
end
