Rails.application.routes.draw do
  root "posts#index"

  devise_scope :user do
    get "users", to: "devise/sessions#new"
  end

  devise_for :users

  resources :posts, only: [:new, :create, :index]
end
