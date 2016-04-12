class OrderMailer < ApplicationMailer
  default from: 'pjbasa@gmail.com'
 
  def order_email(user)
    @user = current_user
    @url  = 'https://bikes-london.herokuapp.com/login'
    mail(to: @user.email, subject: 'Thank you for your purchase!')
  end
end
