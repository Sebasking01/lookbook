Rails.application.config.middleware.use OmniAuth::Builder do
  provider :instagram , ENV['instagram_id'], ENV['instagram_secret']
  provider :google_oauth2, ENV["GOOGLE_CLIENT_ID"], ENV["GOOGLE_CLIENT_SECRET"], {
    access_type: 'offline',
    scope: 'userinfo.email,calendar',
    redirect_uri: 'http://localhost:3000/auth/google_oauth2/callback'
  }
end
