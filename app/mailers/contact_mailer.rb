class ContactMailer < ApplicationMailer
  def contact_me(message)
    @greeting = "Hi"

    mail to: "omagdiel@gmail.com"
  end
end
