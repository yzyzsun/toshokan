Rails.application.routes.draw do
  root           "books#index"
  get "about" => "pages#about"
  devise_for :users
  resources :books, except: :index
end
