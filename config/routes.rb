Rails.application.routes.draw do
  resources :notes
  resources :users, only: [:show]

  #signup
  post '/signup', to: 'users#user_signup'

  #login
  post '/login', to: 'sessions#login'

  #logout
  delete '/logout', to: 'sessions#logout'

end
