Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :books, only: [:index]
  get '/dashboard', to: 'pages#dashboard'
  get '/dashboard/new', to: 'books#new'
  post '/dashboard', to: 'books#create'
  get '/books/list/:title', to: 'books#show'
  post '/books/list/:title', to: 'books#show'
  get '/dashboard/update/:id', to: 'books#edit'
  patch '/dashboard/:id', to: 'books#update'
  delete '/dashboard/:id', to: 'books#destroy'
  root to: 'pages#home'
  mount Attachinary::Engine => "/attachinary"

end
