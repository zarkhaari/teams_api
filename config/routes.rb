Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post 'authenticate', to: 'auth#authenticate'

  namespace :api do
    namespace :v1 do
      jsonapi_resources :teams
      jsonapi_resources :projects
      jsonapi_resources :employees
    end
  end
end
