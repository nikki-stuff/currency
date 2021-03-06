Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :currencies
  end

  resource :users, only: [:create]
  post "/login", to: "users#login"
end
