class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @users = User.find(params[:id])
  end

  def new
    @users = User.new
  end

  def create
    @users = User.create(user_params)
    if @users.save
      session[:user_id] = @users.id
      redirect_to root_path, notice: 'Login Successful'
    else
      flash[:alert] = 'Login Unsuccessful, please try again'
      render new_user_path
    end
  end

  def show_links
    @users = User.find(params[:id]).links
  end

  def edit
    set_user
    @users = User.find(params[:id])
  end

  def destroy
  end

private

  def set_user
    @users = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email, :password,
                                 :password_confirmation)
  end

end
