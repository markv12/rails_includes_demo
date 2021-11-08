class Author < ActiveRecord::Base
  belongs_to :city
  has_many :articles

  scope :in_forties, -> { where("age >= ? AND age < ?", 40, 50) }
end