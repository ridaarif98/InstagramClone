class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates_uniqueness_of :post_id, scope: :user_id
  after_create :update_like_counter
  after_destroy :decrement_like_counter

  def update_like_counter
    Post.find(post_id).increment(:likes_counter).save
  end

  def decrement_like_counter
    Post.find(post_id).decrement(:likes_counter).save
  end
end
