class User < ActiveRecord::Base
  has_many :identites, :appointments
  
  def self.create_with_omniauth(auth)
    User.create({provider: auth[:provider], uid: auth[:uid], name: auth[:info][:nickname]})
  end
end
