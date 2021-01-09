FactoryBot.define do
  factory :customer_event do
    customer_event_date { "2021-01-08" }
    customer_event_details { "MyText" }
    customer { "MyString" }
    event_type { "MyString" }
  end
end
