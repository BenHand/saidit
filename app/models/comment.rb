class Comment < ActiveRecord::Base
  validates_presence_of :user_id, :link_id, :body
  belongs_to :user
  belongs_to :link
  has_many :votes
end
