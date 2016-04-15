class OrderMailer < ApplicationMailer
  def order_confirmation(user, order)
    @user = user
    @order = order
    mail(to: user.email, subject: 'Order has been received').deliver_now
  end
end
