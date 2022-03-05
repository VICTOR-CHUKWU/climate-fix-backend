class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post

  
  def update_likes_counter
    posts.likescounter += 1
  end
end
