Rails.application.routes.draw do
  devise_for :users
  devise_for :admin

  scope module: :public do
    root :to =>"homes#top"
    get "my_page"=>"homes#show"
    resources :recipes, only: [:new,:index,:edit,:create,:destroy]
    resources :memos, only: [:new,:index,:edit,:create,:destroy]
  end

  namespace :admin do
    resources :genres, only: [:index,:edit,:create,:destroy]
    resources :items, only: [:index,:edit,:create,:destroy]
    resources :recipes, only: [:new,:index,:edit,:create,:destroy]
  end
  
end
