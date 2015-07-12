Rails.application.routes.draw do



  get 'posts/index'

  get 'posts/new'

  get 'posts/create'

  get 'posts/edit'

  get 'posts/destroy'

  get 'videos/index'

  get 'videos/new'

  get 'videos/show'

  get 'videos/create'

  get 'styles/index'

  get 'styles/new'

  get 'styles/show'

  get 'styles/create'

  get '/auth/instagram/callback', to: 'sessions#create'

  get '/auth/google_oauth2/callback', to: 'appointments#new'

  get '/logout', to: 'sessions#destroy'

  root 'main#home'

  resources 'users', only: ['edit', 'show']

  resources 'users' do
    resources 'appointments', only: ['new', 'edit', 'destroy', 'show', 'create']
  end

  resources 'posts'

  resources 'styles'

  resources 'videos'
end
