class BoardsController < ApplicationController

  def index
    @boards = Board.all
  end

  # TODO: be able to create a new category
  def new
    @board = Board.new
  end

  # TODO: be able to show all links from specific category
  # def show
  #   @boards = Board.find_by_category(category: params[:id])
  # end

  # def edit
  # end

  # def destroy
  # end

end
