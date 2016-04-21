class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :topic, index: true, foreign_key: true
      t.text :text

      t.timestamps null: false
    end
  end
end
