class User < ActiveRecord::Base
  attr_accessible :login, :email

  def self.t
    user = User.first
    UserMailer.welcome_email(user).deliver
  end
end
