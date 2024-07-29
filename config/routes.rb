Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }

  root 'pages#home'

  get 'gallery', to: 'pages#gallery'
  get 'reviews', to: 'pages#reviews'
  get 'services', to: 'pages#services'
  get 'contact', to: 'pages#contact'

  post 'contact', to: 'pages#send_message'

  # ゲストサインイン用のルート
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in', as: :user_guest_sign_in
  end

  resources :stylists do
    resources :reviews, only: [:create]
  end
end
