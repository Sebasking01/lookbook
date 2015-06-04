Rails.application.routes.draw do

  get 'users/edit'

  get '/auth/instagram/callback', to: 'sessions#create'

  root 'main#home'
  
  get 'users/show/:id'

end
