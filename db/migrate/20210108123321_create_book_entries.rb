class CreateBookEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :book_entries do |t|
      t.references :customer_account, null: false, foreign_key: true
      t.string :book_type_code
      t.date :entry_date
      t.string :debit_or_credit
      t.integer :entry_amount

      t.timestamps
    end
  end
end
