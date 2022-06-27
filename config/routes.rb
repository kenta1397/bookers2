Rails.application.routes.draw do

  devise_for :users
  root to: "homes#top"
  get 'home/about' => 'homes#about', as: 'about'
  get 'home/top' => 'homes#top', as: 'top'

  resources :books, only: [:new, :create, :index, :edit, :show, :update, :destroy]

  resources :users, only: [:index, :edit, :show, :update]

end
