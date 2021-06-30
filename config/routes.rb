Rails.application.routes.draw do
  root 'books#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/', to: 'books#index'
  resources :books, only: [:index, :show, :create, :destroy, :update]
end
