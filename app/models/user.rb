class User < ActiveRecord::Base
  def self.create_with_omniauth(info)
    create(name: info['name'])
  end
end
