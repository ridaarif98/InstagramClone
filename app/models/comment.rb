class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  after_create :update_comment_counter

  def update_comment_counter
    Post.find(post_id).increment(:comments_counter).save
  end
end
