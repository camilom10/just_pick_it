Rails.application.routes.draw do
    resources :users
    root 'movies#search'

    get 'movies/search' => 'movies#search'
    get 'movies/search_result' => 'movies#search_result'

    get  '/signup',  to: 'users#new'
    post '/signup',  to: 'users#create'
    get    '/login',   to: 'sessions#new'
    post   '/login',   to: 'sessions#create'
    delete '/logout',  to: 'sessions#destroy'
  get 'movies/search'
  get 'movies/search_result'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

end
