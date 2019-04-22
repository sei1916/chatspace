# ルーティングを追加
Rails.application.routes.draw do
<<<<<<< Updated upstream
  devise_for :users
  root "groups#index"
  resources :users, only: [:index, :edit, :update]

  resources :groups, only: [:new, :create, :edit, :update] do
    resources :messages, only: [:index, :create]
    namespace :api do
      resources :messages, only: :index, defaults: {format: 'json'}
    end
=======
devise_for :users
   root 'groups#index'
  resources :users, only: [:edit, :update]
  resources :groups, only: [:new, :create, :edit, :update] do
    resources :messages, only: [:index, :create]
>>>>>>> Stashed changes
  end
end

