Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  root to: 'home#index'
  devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :users, only: [:show]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
