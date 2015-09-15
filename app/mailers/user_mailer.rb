class UserMailer < ApplicationMailer

  def account_activation(user)
    @user = user
    mail to: user.email, subject: "Account activation | Halifax College Live"
  end

  def password_reset(user)
    @user = user
    mail to: user.email, subject: "Password reset  | Halifax College Live"
  end
  
end
