class AddPics < ActiveRecord::Migration[5.2]
  def change
    create_table :pics do |t|
      t.belongs_to :user, foreign_key: true
    end
  end
end
