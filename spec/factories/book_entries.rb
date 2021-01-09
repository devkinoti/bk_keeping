FactoryBot.define do
  factory :book_entry do
    customer_account { nil }
    book_type_code { "MyString" }
    entry_date { "2021-01-08" }
    debit_or_credit { "MyString" }
    entry_amount { 1 }
  end
end
