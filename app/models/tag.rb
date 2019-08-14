class Tag < ApplicationRecord
  has_many :pic_tags
  has_many :pics, :through => :pic_tags
end
