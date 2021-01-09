FactoryBot.define do
  factory :book_type do
    book_type_code { 1 }
    book_type_name { "MyString" }
    book_type_description { "MyText" }
  end
end
