class UsersController < ApplicationController

  def index
    users = User.all
    @counter = 1
    @users = users.sort_by { |u| u.links.count }.reverse
  end

  def show
    @users = User.find(params[:id])
    @links = Link.all.where(user_id: params[:id])
    @comments = Comment.all.where(user_id: params[:id])
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
  # TODO: be able to edit users information if authorized
  # def edit
  #   if set_user.id == session[:user_id]
  #     render text: 'success'
  #   else
  #     render text: 'what now'
  #   end
  # end

  # TODO: be able to delete a user account if authorized
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
