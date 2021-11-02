class City < ActiveRecord::Base
  has_many :authors
end