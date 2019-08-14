class AddPicTags < ActiveRecord::Migration[5.2]
  def change
    create_table :pic_tags, id: false do |t|
     t.belongs_to :pic, index: true
     t.belongs_to :tag, index: true
   end
  end
end
