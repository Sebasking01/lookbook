Rails.application.routes.draw do



  get '/auth/instagram/callback', to: 'sessions#create'

  root 'main#home'

  resources 'users', only: ['edit', 'show']

end
