Rails.application.routes.draw do
  devise_for :users
  root to: "runs#index"
  resources :runs do
    resources :comments, only: :create
  end
  resources :users, only: [:show, :edit, :update]
end
