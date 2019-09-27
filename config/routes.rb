Rails.application.routes.draw do
  namespace :admin do
      resources :menu_items
      resources :photos
      resources :reviews
      resources :trucks
      resources :users

      namespace :acts_as_taggable_on do
        resources :tags
        resources :taggings
      end

      root to: "menu_items#index"
    end


  concern :paginatable do
    get '(page/:page)', action: :index, on: :collection, as: ''
  end

  concern :show_paginatable do
    get '(page/:page)', action: :show, on: :member, as: ''
  end

  resources :categories, concerns: :show_paginatable, only: [:show]

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
