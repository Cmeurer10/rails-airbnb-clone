Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :books, only: [:index]
  get '/dashboard', to: 'pages#dashboard' do
    resources :books, except: [:show, :index]
  end
  get '/dashboard/new', to: 'books#new'
  post '/dashboard', to: 'books#create'
  get '/books/:title', to: 'books#show'
  get '/dashboard/update/:id', to: 'books#edit'
  patch '/dashboard/:id', to: 'books#update'
  delete '/dashboard/:id', to: 'books#destroy'
  root to: 'pages#home'

  resources :maps, only: [:index]

end
