class CreateTransactionTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :transaction_types do |t|
      t.integer :transaction_type_code
      t.string :transaction_type_name
      t.text :transaction_type_description

      t.timestamps
    end
  end
end
