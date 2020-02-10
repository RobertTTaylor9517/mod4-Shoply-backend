Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post 'authenticate', to: 'authentication#authenticate'
  get 'products', to: "products#index"
  post '/users/new', to: 'users#create'
  get '/products', to: 'products#index'
  get '/products/:id', to: 'products#show'
  get '/category/:category', to: 'products#category'
  get '/reviews/:product_id', to: 'reviews#index'
end
