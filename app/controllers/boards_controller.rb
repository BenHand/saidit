class BoardsController < ApplicationController

  def index
    @boards = Board.all
  end

  def show
    @board = Board.find(params[:id])
    @links = Link.all.where(board_id: params[:id])
  end

  def new
    @board = Board.new
  end

  def create
    Board.create(category: params['/boards/new'][:category])
    redirect_to :back
  end
  # TODO: be able to show all links from specific category
  # def show
  #   @boards = Board.find_by_category(category: params[:id])
  # end

  # def edit
  # end

  def destroy
    links = Link.all.where(board_id: params[:id])
    links.each do |link|
      link.comments.each do |comment|
        comment.votes.each do |vote|
          vote.destroy
        end
        comment.destroy
      end
      link.destroy
    end
    Board.find(params[:id]).destroy
    redirect_to :back
  end

end
