class PostSerializer < ActiveModel::Serializer
  attributes :id, :description, :title, :picture
  has_many :comments
end
