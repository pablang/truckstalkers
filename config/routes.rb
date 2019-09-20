Rails.application.routes.draw do
  concern :paginatable do
    get '(page/:page)', action: :index, on: :collection, as: ''
  end

  resources :photos
  get '/', to:'home#index'
  resources :trucks, concerns: :paginatable, only: [:show, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :reviews, only: [:create]
  end

  post '/users' => 'users#create'

  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end
