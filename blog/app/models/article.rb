class Article < ApplicationRecord
  has_many :comment
  def comments
    comment
  end
end
