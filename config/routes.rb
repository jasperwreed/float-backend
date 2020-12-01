Rails.application.routes.draw do
  resources :likes
  resources :comments
  resources :posts
  resources :users
  resources :followership

  post '/login', to: 'users#login'
  get '/profile', to: 'users#profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
