Rails.application.routes.draw do
<<<<<<< HEAD
  get 'movies/search'
  get 'movies/result'
  get 'movies/search_result'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
=======

  resources :users
  root 'users#index'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
>>>>>>> 12974ac2d57db4f7322ee6d84b5e0687abab6387
end
