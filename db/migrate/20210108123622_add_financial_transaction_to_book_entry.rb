class AddFinancialTransactionToBookEntry < ActiveRecord::Migration[6.1]
  def change
    add_reference :book_entries, :financial_transaction, null: false, foreign_key: true
  end
end
