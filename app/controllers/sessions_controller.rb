class SessionsController < ApplicationController
  
  def new
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user # having placed user id into the session, we can now log them in
      # below line includes remember me method
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      redirect_to user
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end
  
  def destroy 
    log_out if logged_in? # avoid user logged from another window
    redirect_to root_url
  end
  
end