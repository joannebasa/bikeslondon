class OrderMailer < ApplicationMailer
  default from: 'pjbasa@gmail.com'

  def contact_form(email, name, message)
  @message = message
    mail(:from => email,
        :to => 'pjbasa@gmail.com',
        :subject => "A new contact form message from #{name}")
  end

  def order_email(user)
  	@name = params[:name]
    @email = params[:email]
    @message = params[:message]
    @user = current_user
    OrderMailer.order_email(@email, @name, @message).deliver_now
  end
end
