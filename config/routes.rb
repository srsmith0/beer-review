Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'api/auth'

  namespace :api do
    resources :users do
      resources :reviews
      resources :posts do 
        resources :comments
      end
    end
  end
end
