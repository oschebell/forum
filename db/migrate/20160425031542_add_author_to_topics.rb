class AddAuthorToTopics < ActiveRecord::Migration
  def change
    add_reference :topics, :author, index: true
    add_foreign_key :topics, :users, column: :author_id
  end
end
