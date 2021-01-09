class Customer < ApplicationRecord
    has_many :customer_events
    has_many :event_types, through: :customer_events
end
