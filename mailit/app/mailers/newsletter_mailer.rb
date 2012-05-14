class NewsletterMailer < ActionMailer::Base
  default from: "noreplay@beltal.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.newsletter_mailer.weekly.subject
  #
  def weekly
    @greeting = "Hi"

    mail to: "bob.wang@beltal.com", subject: "test roadie"
  end
end
