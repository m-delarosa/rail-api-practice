Rails.application.routes.draw do
  resources :authors, only: [:index, :show, :create, :update, :destroy]
  resources :magazines, only: [:index, :show, :create, :update, :destroy]
  resources :articles, only: [:index, :show, :create, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
