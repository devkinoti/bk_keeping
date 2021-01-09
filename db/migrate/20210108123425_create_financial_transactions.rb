class CreateFinancialTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :financial_transactions do |t|
      t.references :customer_event, null: false, foreign_key: true
      t.date :transaction_date
      t.integer :transaction_amount

      t.timestamps
    end
  end
end
