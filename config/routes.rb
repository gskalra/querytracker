Rails.application.routes.draw do
  resources :categories
  root "queries#index"

  resources :queries do
    resources :comments
  end
end