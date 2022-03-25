class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :jwt_authenticatable,
         :registerable,
         jwt_revocation_strategy: JwtDenylist

  # has_secure_password
  has_many :posts
  has_many :comments
  has_many :likes
  has_many :volunteers

  # validates :email, :password, presence: true
  # validates_uniqueness_of :email, :password
  # validates :postcounter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :name, presence: { message: 'You must fill in your name' }
  validates :email, presence: { message: 'email field cannot be left blank' }
  validates :password, presence: { message: 'password field cannot be left blank' }
end
