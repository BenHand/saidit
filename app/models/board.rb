class Board < ActiveRecord::Base
  has_many :links

  def self.select_boards
    all.map { |x| [x.category, x.id] }
  end

end
