Rails.application.routes.draw do
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/add-member', to: 'choirmembers#new'
  post '/add-member', to: 'choirmembers#create'

  root to: 'choirmembers#welcome'
end
