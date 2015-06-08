class Identity < ActiveRecord::Base
  belongs_to :user

  def self.create_with_omniauth(auth)
    Identity.create({
      provider: auth[:provider],
      uid: auth[:uid],
      token: auth[:token],
      first_name: auth[:info][:first_name],
      last_name: auth[:info][:last_name],
      email: auth[:info][:email]
      })
  end
end
