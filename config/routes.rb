Rails.application.routes.draw do
  devise_for :customers
  post 'buyers/confirm' => "buyers#confirm"
  post 'purchases/pay' => "purchases#pay"
  get 'purchases/done' => "purchases#done"
  root 'products#index'

  resources :customers,only: [:show,:edit,:update] do
  	resources :buyers, only: [:new,:create,:edit,:update,:destroy]
  	resources :cards, only: [:new,:create,:edit,:update,:destroy]
  end
  resources :products,only: [:show,:edit,:update,:new,:create,:destroy] do
  	resource :comments, only: [:create]
  	resources :comments, only: [:new]
  	resource :favorites, only: [:create,:destroy]
  	resources :images, only: [:new,:create,:edit,:update,:destroy]
  	resources :brands, only: [:new,:create,:edit,:update]
  	resources :purchases, only: [:index]
  	resources :categorys, only: [:index]

  end
  resources :comments, only: [:destroy]
end
