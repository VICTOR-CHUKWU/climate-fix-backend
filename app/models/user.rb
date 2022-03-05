class User < ApplicationRecord
  has_many :posts
  has_many :comments
  has_many :likes
  has_many :volunteers

  validates :name, presence: true
  validates :postcounter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

end
