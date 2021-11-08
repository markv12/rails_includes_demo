class Article < ActiveRecord::Base
  belongs_to :author
  has_many :comments
  has_many :comments_with_at_least_5_likes, -> { where("like_count >= ?", 5) }, class_name: "Comment"
end