FactoryBot.define do
  factory :financial_transaction do
    customer_event { nil }
    tranaction_date { "MyString" }
  end
end
