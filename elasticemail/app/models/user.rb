class User < ActiveRecord::Base
  attr_accessible :name, :login, :email

  def self.t
    user = User.last
    UserMailer.welcome_email(user).deliver
  end
end
