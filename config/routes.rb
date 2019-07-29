Rails.application.routes.draw do
  get '/canvas', to: 'doodles#index'
  get '/profile/:id', to: 'user_doodles#show'
end
