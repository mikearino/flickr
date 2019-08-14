class Pic < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  has_many :pic_tags
  has_many :tags, :through => :pic_tags

  def find_tag
   tag = ActiveRecord::Base.connection.execute("select tags.tag FROM (tags JOIN pic_tags ON pic_tags.tag_id = tags.id) WHERE pic_tags.pic_id = #{self.id}")
  end
end
