class User < ActiveRecord::Base
  validates_presence_of :username, :email,
                        :password,
                        :password_confirmation
  has_secure_password
  has_many :links
  has_many :comments
  has_many :votes
end
