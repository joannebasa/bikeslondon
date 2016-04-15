class OrderMailer < ApplicationMailer
  default from: 'pjbasa@gmail.com'

  def order_confirmation(user, email)
  	@name = params[:name]
    @email = params[:email]
    @message = params[:message]
    @user = current_user
    mail( :to => user.email,
        :subject => "#{@appname} Order Received")
  end
end
