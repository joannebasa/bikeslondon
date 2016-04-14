class UserMailer < ApplicationMailer
  default from: "pjbasa@gmail.com"

  def contact_form(email, name, message)
  @message = message
    mail(:from => email,
        :to => 'pjbasa@gmail.com',
        :subject => "A new contact form message from #{name}")
  end

  def welcome(user)
    @appname = "Bikes London"
    mail( :to => user.email,
        :subject => "Welcome to #{@appname}!")
  end

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    UserMailer.contact_form(@email, @name, @message).deliver_now
  end

  def order_confirmation(user, order)
    @user = user
    @order = order
    mail(to: user.email, subject: 'Order has been received')
  end
end