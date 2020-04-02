Rails.application.routes.draw do
  resources :posts
  namespace :users do
    resources :mentions, only: [:index]
  end
  resources :users
  resources :youtube
  root to: "posts#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
