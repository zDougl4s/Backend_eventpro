Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  
  resources :users
  resources :events
  resources :tickets
  # , only: [:create, :update]
    post '/login', to: 'auth#login'
    get '/validate', to: 'auth#validate'
    post "/updatedetails", to: "users#update_details"
end