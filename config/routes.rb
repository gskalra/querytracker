Rails.application.routes.draw do
  root "queries#index"

  resources :queries do
    resources :comments
  end
end