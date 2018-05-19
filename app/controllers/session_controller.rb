class SessionController < ApplicationController
  def new
  end

#add session according to user authentication.
#add cookies for ActionCable connection.

  def create
    @user = User.find_by :email => params[:email]
    if @user.present? && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      # cookies.signed[:user_id] = @user.id
      # redirect_to @user
      redirect_to home_path

    else
      flash[:error] = "Invalid email or password"
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end
