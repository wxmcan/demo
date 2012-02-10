require File.expand_path('../boot', __FILE__)

require 'rails/all'

if defined?(Bundler)
  # If you precompile assets before deploying to production, use this line
  Bundler.require(*Rails.groups(:assets => %w(development test)))
  # If you want your assets lazily compiled in production, use this line
  # Bundler.require(:default, :assets, Rails.env)
end

module MultipleSmtp
  class Application < Rails::Application

    # Configure the default encoding used in templates for Ruby 1.9.
    config.encoding = "utf-8"

    # Configure sensitive parameters which will be filtered from the log file.
    config.filter_parameters += [:password]

    # Enable the asset pipeline
    config.assets.enabled = true

    # Version of your assets, change this if you want to expire all your assets
    config.assets.version = '1.0'
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = {
#      :address => '119.254.16.53',
      #:port => 25,
      #:domain => 'beltal.com',
      #:user_name => 'no-reply',
      #:password => 'wmcsync^)!@',
#      :authentication => :login

#      :address => 'smtp.ym.163.com',
      #:port => 25,
      #:domain => 'ym.163.com',
      #:user_name => 'noreply1@member.beltal.com',
      #:password => '123456qaz',
      #:authentication => 'plain',
#      :enable_starttls_auto => true

      :address => 'smtp.exmail.qq.com',
      :port => 25,
      :domain => 'exmail.qq.com',
      :user_name => 'noreply@member.beltal.com',
      :password => '123456qaz',
      :authentication => 'login',
      #:enable_starttls_auto => true

      #:address              => "smtp.gmail.com",
      #:port                 => 587,
      #:domain               => 'www.gmail.com',
      #:user_name            => 'dingfan365',
      #:password             => '123456qaz',
      #:authentication       => 'login',
      #:enable_starttls_auto => true
    }
  end
end
