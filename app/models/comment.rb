class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  def update_commment_counter
    posts.commentscounter += 1
  end
end
