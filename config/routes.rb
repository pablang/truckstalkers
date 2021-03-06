Rails.application.routes.draw do

  root 'home#index'

  devise_for :users

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

    root to: "trucks#index"
  end

  concern :paginatable do
    get '(page/:page)', action: :index, on: :collection, as: ''
  end

  concern :show_paginatable do
    get '(page/:page)', action: :show, on: :member, as: ''
  end

  resources :categories, concerns: :show_paginatable, only: [:show]

  resources :photos

  resources :trucks, concerns: :paginatable, only: [:show, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :reviews, only: [:create]
  end

end
