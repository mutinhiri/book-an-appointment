Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/doctors', to: 'doctors#index'
      get '/doctors/:id', to: 'doctors#show'
      post '/doctors/create', to: 'doctors#create'

    end
  end

  get 'signup', to: 'users#new'
  resources :users, except: [:new]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'appointments', to: 'appointments#index'
  post 'appointments', to: 'appointments#create'
  delete 'appointments/:id', to: 'appointments#destroy'
end
