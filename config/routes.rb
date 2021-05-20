Rails.application.routes.draw do
  devise_for :users
  root to: "runs#index"
  resources :runs, only: [:index, :new, :create]
end
