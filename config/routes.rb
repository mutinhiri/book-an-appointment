Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/doctors', to: 'doctors#index'
      get '/doctors/:id', to: 'doctors#show'
      post '/doctors/create', to: 'doctors#create'
      post '/users', to: 'users#create'
      get 'signup', to: 'users#new'
      get 'login', to: 'sessions#new'
      post 'login', to: 'sessions#create'
      delete 'logout', to: 'sessions#destroy'
      resources :appointments

    end
  end
end
