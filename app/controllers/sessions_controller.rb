class SessionsController < ApplicationController

  def new
  end

  def create
    @users = User.find_by_email(params[:email])
    if @users  && @users.authenticate(params[:password])
      session[:user_id] = @users.id
      redirect_to root_path, notice: 'Success'
    else
      flash[:alert] = 'Email or password did not match'
      render text: "failure"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
