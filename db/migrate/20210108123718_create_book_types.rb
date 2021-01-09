class CreateBookTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :book_types do |t|
      t.integer :book_type_code
      t.string :book_type_name
      t.text :book_type_description

      t.timestamps
    end
  end
end
