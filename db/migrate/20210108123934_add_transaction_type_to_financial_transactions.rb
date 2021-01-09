class AddTransactionTypeToFinancialTransactions < ActiveRecord::Migration[6.1]
  def change
    add_reference :financial_transactions, :transaction_type, null: false, foreign_key: true
  end
end
