Rails.application.routes.draw do
  get 'hello/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "blogs#index"
  get "blogs/about" => "blogs#about"
  get '/article/tag/:name' => 'articles#tag'
  get '/article/tag' => 'articles#tag'

  resources :articles do
  	resource :likes, only: [:create, :destroy]
  end

  resources :areas

  resources :users, only: [:show,:edit,:update,]
end
