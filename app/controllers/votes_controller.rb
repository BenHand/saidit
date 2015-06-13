class VotesController < ApplicationController
  def index
  end

  def new
  end

  def show
  end

  def edit
  end

  def destroy
  end

  def upvote
    upvote = Vote.find_by(link_id: params[:link_id]).upvote + 1
    @votes = Vote.find_by(link_id: params[:link_id]).update(upvote: upvote)
    redirect_to :back
  end

  def downvote
    downvote = Vote.find_by(link_id: params[:link_id]).downvote + 1
    @votes = Vote.find_by(link_id: params[:link_id]).update(downvote: downvote)
    redirect_to :back
  end
end
