class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  after_save :update_comments_counter

  private

  def update_comments_counter
    post.increment!(:commentscounter)
  end

  # def update_commment_counter
  #   posts.commentscounter += 1
  # end
end
