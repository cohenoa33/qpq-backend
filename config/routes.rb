Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :service_categories
      resources :categories
      resources :requests
      resources :services
      resources :users
      
      # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
      # devise_for :users,
      #   path: '',
      #   path_names: {
      #     sign_in: 'login',
      #     sign_out: 'logout',
      #     registration: 'signup'
      #   },
      #   controllers: {
      #     sessions: 'sessions',
      #     registrations: 'registrations'
        # }
        #Commented this out to test levleup.gitconnected url 
        resource :users, only: [:create]

        post "/login", to: "auth#login"
        get "/auto_login", to: "auth#auto_login"
        get "/user_is_authed", to: "auth#user_is_authed"
    end
  end
end
