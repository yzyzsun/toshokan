Rails.application.routes.draw do
  root           'books#index'
  get 'about' => 'pages#about'
  devise_for :users
  resources :users, only: [:index, :show]
  resources :books, except: :index do
    get 'borrow', on: :member
    get 'return', on: :member
  end
  resources :categories, except: [:index, :edit, :update]
end
