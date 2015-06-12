class LinksController < ApplicationController

  def index
    @links = Link.all.reverse
  end

  def show
    @links = Link.find(params[:id])
  end

  def new
  end

  def edit
  end

  def destroy
  end
end
