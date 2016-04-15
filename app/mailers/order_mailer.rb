class OrderMailer < ApplicationMailer
  default from: 'pjbasa@gmail.com'

  def order_confirmation(user, email)
    @user = current_user
    mail( :to => @user.email,
        :subject => "#{@appname} Order Received")
  end
end
