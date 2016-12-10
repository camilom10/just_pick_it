Rails.application.routes.draw do
  get 'movies/search'
  get 'movies/result'
  get 'movies/search_result'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users
  root 'users#new'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
