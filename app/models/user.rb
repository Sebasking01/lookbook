class User < ActiveRecord::Base
  has_one :identity
  has_many :appointments

  def self.create_with_omniauth(auth)
    User.create({provider: auth[:provider], uid: auth[:uid], name: auth[:info][:nickname], picture_url: auth[:info][:image]})
  end
end
