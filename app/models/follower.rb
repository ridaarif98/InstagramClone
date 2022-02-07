class Follower < ApplicationRecord
  # belongs_to :user
  validates_uniqueness_of :follower_id, scope: :following_id
end
