class TransactionType < ApplicationRecord
    has_many :financial_transactions
end
