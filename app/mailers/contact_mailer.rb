class ContactMailer < ApplicationMailer
  def email(message)
    @message = message
    @body = message.body

    mail(to: "omagdiel@gmail.com", from: message.email, subject: "You have a new message from Tanteraka")
  end
end
