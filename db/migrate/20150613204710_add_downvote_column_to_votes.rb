class AddDownvoteColumnToVotes < ActiveRecord::Migration
  def change
    add_column :votes, :downvote, :integer
  end
end
