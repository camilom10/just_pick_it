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

end
