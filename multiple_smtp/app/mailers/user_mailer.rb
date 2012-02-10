class UserMailer < ActionMailer::Base
  default :from => "noreply@member.beltal.com"

  def load_settings
    options = YAML.load_file("#{Rails.root}/config/action_mailer.yml")[Rails.env]["website1"]
    UserMailer.smtp_settings = {
      :address              => options["address"],
      :port                 => options["port"],
      :domain               => options["domain"],
      :authentication       => options["authentication"],
      :user_name            => options["user_name"],
      :password             => options["password"]
    }
  end

  def welcome_email(user = nil)
    load_settings
    user = User.find(6) if user.nil?
    @user = user
    @url  = "http://example.com/login"
    mail(:to => user.email, :subject => "Welcome to My Site , thx.")
  end
  alias_method :we, :welcome_email
end
