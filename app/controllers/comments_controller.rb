class CommentsController < ApplicationController

  def index
  end

  def new
    @comments = Comment.new
  end

  def show
    @comments = Comment.find(params[:id])
  end

  # TODO: be able to edit comments if authorized
  def edit
  end

  # TODO: be able to delete comments if authorized
  def destroy
  end

  def create
    @comments = Comment.create(body: params[:comment][:body],
                            user_id: session[:user_id],
                            link_id: params[:comment][:link_id])
    redirect_to :back
  end

private

  def comment_params
    params.require(:comment).permit(:body, :user_id,
                                    :link_id)
  end

end
