Rails.application.routes.draw do
  get '/', to: 'lists#index'
  resources :lists, only: [ :index, :show, :new, :create ] do
    resources :bookmarks, only: [ :new, :create ]
  end
  resources :bookmarks, only: :destroy
  resources :movies, only: [:index, :show]
end
