class AddDefaultValueToUpvote < ActiveRecord::Migration
  def change
    change_column :votes, :upvote, :integer, default: 0
  end
end
