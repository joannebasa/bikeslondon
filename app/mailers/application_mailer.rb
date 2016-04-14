class ApplicationMailer < ActionMailer::Base
  default from: "pjbasa@gmail.com"
  layout 'mailer'

  def contact_form(email, name, message)
    @message = message
      mail(:from => email,
          :to => 'pjbasa@gmail.com',
          :subject => "A new contact form message from #{name}")
  end

  def order_email (order, user)
    @user = user
    @order = order
    mail( :to => email,
        :subject => "Bikes London Order Confirmation")
  end

end