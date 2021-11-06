class Comment < ActiveRecord::Base
  belongs_to :article

  scope :with_at_least_5_likes, -> { where("like_count >= ?", 5) }
end