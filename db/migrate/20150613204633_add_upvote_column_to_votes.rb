class AddUpvoteColumnToVotes < ActiveRecord::Migration
  def change
    add_column :votes, :upvote, :integer
  end
end
