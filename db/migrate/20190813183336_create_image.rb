class CreateImage < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :url
      t.string :tags
      t.string :favorites
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
