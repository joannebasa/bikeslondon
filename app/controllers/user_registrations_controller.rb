class UserRegistrationsController < Devise::RegistrationsController
  def deliver_now
    super
    if @user.persisted?
      UserMailer.welcome(@user).deliver_now
    end
  end
end