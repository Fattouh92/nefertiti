class UserMailer < ActionMailer::Base
  default from: "contact@nefertitimarinefleet.com"

  def generic_email(mail_to, subject, message)
    mail to: mail_to, subject: subject, body: message
  end

end