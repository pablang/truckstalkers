Rails.application.routes.draw do
  get '/', to:'home#index'
  resources :trucks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :reviews, only: [:create]
  end

  post '/users' => 'users#create'

  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
end
