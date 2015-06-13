Rails.application.routes.draw do



  get '/auth/instagram/callback', to: 'sessions#create'

  get '/auth/google_oauth2/callback', to: 'appointments#new'

  get '/logout', to: 'sessions#destroy'

  root 'main#home'

  resources 'users', only: ['edit', 'show']

  resources 'users' do
    resources 'appointments', only: ['new', 'edit', 'destroy', 'show', 'create']
  end
end
