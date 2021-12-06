Rails.application.routes.draw do
  devise_for :users
  resources :studios
  root to: "home#index"
end
