class ContactMailer < ApplicationMailer
  default from: "omagdiel@gmail.com"
  
  def email(message)
    @body = message.body
    @email = message.email

    mail(to: "omagdiel@gmail.com", subject: "You have a new message from Tanteraka")
  end
end
