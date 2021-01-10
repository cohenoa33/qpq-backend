Rails.application.routes.draw do
  root 'welcome#index'

  namespace :api do
    namespace :v1 do
      resources :service_categories
      resources :categories
      resources :requests
      resources :services
      resources :users

      # resources :users, only: [:create]
      get '/persist', to: 'users#persist'
      post '/login', to: 'auth#create'
      get '/current_user', to: 'users#profile'
    end
  end
end
