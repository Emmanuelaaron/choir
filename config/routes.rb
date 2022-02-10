Rails.application.routes.draw do
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/add-member', to: 'choirmembers#new'
  post '/add-member', to: 'choirmembers#create'
  get '/kansanga', to: 'choirmembers#kansanga'
  get '/bweyogerere', to: 'choirmembers#bweyogerere'
  get '/kyengera', to: 'choirmembers#kyengera'
  get '/lubowa', to: 'choirmembers#lubowa'
  get '/entebbe', to: 'choirmembers#entebbe'
  get '/gulu', to: 'choirmembers#gulu'
  get '/bugolobi', to: 'choirmembers#bugolobi'
  get '/juba', to: 'choirmembers#juba'
  get 'downtown', to: 'choirmembers#downtown'
  get 'mbarara', to: 'choirmembers#mbarara'

  root to: 'choirmembers#welcome'
end
