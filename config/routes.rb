Rails.application.routes.draw do
  get 'users/show'

  get 'users/edit'

    get '/auth/instagram/callback', to: 'sessions#create'
end
