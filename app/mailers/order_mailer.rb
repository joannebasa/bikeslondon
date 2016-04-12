class OrderMailer < ApplicationMailer
  default from: 'pjbasa@gmail.com'

  def order_confirm(user)
  	@name = params[:name]
    @email = params[:email]
    @message = params[:message]
    @user = current_user
    OrderMailer.order_email(@email, @name, @message).deliver_now
  end
end
