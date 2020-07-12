Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "blogs#index"
  get "blogs/about" => "blogs#about"

  resources :articles

  resources :user_profiles, except: [:index,:destroy]

  resources :users, only: [:show]
end
