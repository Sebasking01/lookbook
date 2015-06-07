Rails.application.routes.draw do



  get '/auth/instagram/callback', to: 'sessions#create'

  get '/auth/google_oauth/callback'

  get '/logout', to: 'sessions#destroy'

  root 'main#home'

  resources 'users', only: ['edit', 'show']

  resources 'appointments', only: ['create', 'edit', 'destroy', 'show']
end
