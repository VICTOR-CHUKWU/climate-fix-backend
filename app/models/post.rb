class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes

  def update_post_counter
    users.postscounter += 1
  end

  def five_recent_posts
    posts.order(created_at: :desc).limit(5)
  end

  def five_recent_comments
    comments.order(created_at: :desc).limit(5)
  end
end
