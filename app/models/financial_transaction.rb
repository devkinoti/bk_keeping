class FinancialTransaction < ApplicationRecord
  belongs_to :customer_event
  has_many :book_entries
  belongs_to :financial_transactions
end
