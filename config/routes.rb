Rails.application.routes.draw do
  root           'books#index'
  get 'about' => 'pages#about'
  devise_for :users
  resources :users, only: [:index, :show]
  resources :books, except: :index
  resources :categories, except: [:index, :edit, :update]
end
