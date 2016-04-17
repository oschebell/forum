class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :subject
      t.references :forum, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
