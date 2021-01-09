FactoryBot.define do
  factory :transaction_type do
    transaction_type_code { 1 }
    transaction_type_name { "MyString" }
    transaction_type_description { "MyText" }
  end
end
