Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users do
    resources :vans, only: [:index, :show, :create, :update] do
      resources :bookings, only: [:index, :show, :create]
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :vans, only: [:new, :destroy, :edit]
  resources :bookings, only: [:new, :destroy]
end
