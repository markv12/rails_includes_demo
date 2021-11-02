class Author < ActiveRecord::Base
  belongs_to :city
  has_many :articles
end