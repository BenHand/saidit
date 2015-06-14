class LinksController < ApplicationController

  def index
    @links = Link.all.reverse
  end

  def show
    @links = Link.find(params[:id])
    @comments = Comment.all.where(link_id: params[:id])
    @comment = Comment.new
    if Link.find(params[:id]).votes
      @votes = Link.find(params[:id]).votes
    end
  end

  def new
    @links = Link.new
  end

  def create
    @links = Link.create(title: params[:link][:title], post: params[:link][:post],
                         board_id: params[:link][:board], user_id: session[:user_id] )
    redirect_to link_path(@links), notice: 'Post Created'
  end

# TODO: be able to edit links
  def edit
  end
# TODO: be able to delete links
  def destroy
  end

private

  def link_params
    params.require(:link).permit(:title, :post, :user_id,
                                 :board)
  end
end
