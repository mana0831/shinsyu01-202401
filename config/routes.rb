Rails.application.routes.draw do
  get 'tasks/index'
  resources :tasks
  devise_for :users
  root to: redirect('/events')
  resources :events

#  root to: 'tasks#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
