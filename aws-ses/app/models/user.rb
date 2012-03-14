class User < ActiveRecord::Base
  attr_accessible :login, :email

  def self.test
    ses = AWS::SES::Base.new
    p ses.addresses.list.result
#    ses.send_email :to        => ['bob.wang@beltal.com'],
      #:source    => '"Steve Smith" <steve@example.com>',
      #:subject   => 'Subject Line'
#    :text_body => 'Internal text body'
  end
end
