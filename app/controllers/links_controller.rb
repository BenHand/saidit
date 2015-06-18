class LinksController < ApplicationController

  def index
    links = Link.all.reverse
    @links = links.sort_by { |l| l.votes.sort_by { |v| v.upvote } }.reverse
  end

  # TODO: remove logic from link partial
  def show
    @links = Link.find(params[:id])
    @comments = Comment.all.where(link_id: params[:id])
    @comment = Comment.new
    @votes = Link.find(params[:id]).votes

  end

  def new
    @links = Link.new
    @all_boards = Board.select_boards
  end

  def create
    @links = Link.create(title: params[:link][:title], post: params[:link][:post],
                         board_id: params[:link][:board], user_id: session[:user_id] )
    Vote.create(link_id: @links.id)
    redirect_to link_path(@links), notice: 'Post Created'
  end

  def edit
    @link = Link.find(params[:id])
  end

  def update
    link = Link.find(params[:id])
    link.title = params[:link][:title]
    link.post = params[:link][:post]
    link.save
    redirect_to link_path(link.id)
  end

  def destroy
    Link.find(params[:id]).destroy
    redirect_to links_path
  end

private

  def link_params
    params.require(:link).permit(:title, :post, :user_id,
                                 :board)
  end
end
