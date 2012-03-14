ActionMailer::Base.add_delivery_method :ses, AWS::SES::Base,
  :access_key_id     => 'abc',
  :secret_access_key => '123'
