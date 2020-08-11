Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :steps
  post '/signup', to: 'users#create'
  get '/profile', to: 'users#show'
  put '/edit-profile', to: 'users#update'
  post '/auth/login', to: 'authentication#authenticate'
end
