class UserMailer < ApplicationMailer
  default from: "pjbasa@gmail.com"

  def contact_form(email, name, message)
  @message = message
    mail(:from => email,
        :to => 'pjbasa@gmail.com',
        :subject => "A new contact form message from #{name}")
  end

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    UserMailer.contact_form(@email, @name, @message).deliver_now
  end
end
