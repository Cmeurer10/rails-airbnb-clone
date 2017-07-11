Rails.application.routes.draw do
  devise_for :users
  # devise_for :users, controllers: {
  #       sessions: 'users/sessions'
  #     }
  resources :books
  root to: 'pages#home'
end
