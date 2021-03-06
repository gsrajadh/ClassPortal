class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])
      log_in @user
      redirect_to users_show_path,notice: 'User logged in!'
    else
      redirect_to login_path,notice: 'Invalid email/password combination'
    end
  end

  def destroy
    log_out
    redirect_to home_index_path
  end
end
