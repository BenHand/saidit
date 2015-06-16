class Link < ActiveRecord::Base
  validates_presence_of :user_id, :post, :title, :board

  has_many :votes, dependent: :destroy
  has_many :comments, dependent: :destroy
  belongs_to :board
  belongs_to :user
end
