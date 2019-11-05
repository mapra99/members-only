Rails.application.routes.draw do
  get 'posts/new'
  post 'posts/create'
  root to: 'posts#index'
  get 'posts/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
