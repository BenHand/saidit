class Link < ActiveRecord::Base
  has_many :votes
  has_many :comments
  belongs_to :board
  belongs_to :user
end
