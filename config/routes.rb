Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  resources :books do
    resource :favorite, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end
  get '/home/about' => 'homes#about', as: 'about'
  resources :users, only: [:index,:show, :edit,:update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end