class Link < ActiveRecord::Base
  validates_presence_of :user_id, :post, :title, :board

  has_many :votes
  has_many :comments
  belongs_to :board
  belongs_to :user
end
