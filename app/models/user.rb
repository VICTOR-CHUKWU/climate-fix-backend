class User < ApplicationRecord
  has_secure_password
  has_many :posts
  has_many :comments
  has_many :likes
  has_many :volunteers

  validates :email, :name, presence: true
  validates_uniqueness_of :email
  validates :postcounter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
