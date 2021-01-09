class AddBookTypeToBookEntry < ActiveRecord::Migration[6.1]
  def change
    add_reference :book_entries, :book_type, null: false, foreign_key: true
  end
end
