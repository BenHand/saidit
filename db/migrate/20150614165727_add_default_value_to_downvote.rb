class AddDefaultValueToDownvote < ActiveRecord::Migration
  def change
     change_column :votes, :downvote, :integer, default: 0
  end
end
