class MyMail
  def self.get_from
    $mail_num && $mail_num != 9 ? $mail_num = $mail_num.to_i + 1 : $mail_num = ""
    "\"Beltal\" <noreply#{$mail_num}@mail.beltal.com>"
  end
end
