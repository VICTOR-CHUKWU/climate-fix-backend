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

# def self.return_users_posts
#   @posts = Post.all
#   i = 0
#   @posts_hash = []
#   while i < @posts.length
#     post-hash = {}
#     post-hash['post'] = @posts[i]
#     post-hash['user'] = User.find_by(id: @posts[i].user)
#     @posts_hash.push(post-hash)
#     i += 1
#   end
#   @posts_hash
# end

# def self.return_post_user(post)
#   @post-hash = {}
#   @post-hash['post'] = post
#   @post-hash['user'] = User.find_by(id: post.user)
#   @post-hash
# end
