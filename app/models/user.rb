class User < ActiveRecord::Base
  has_one :identity, dependent: :destroy
  has_many :appointments, dependent: :destroy

  def self.create_with_omniauth(auth)
    User.create({provider: auth[:provider], uid: auth[:uid], name: auth[:info][:nickname]})
  end
end
