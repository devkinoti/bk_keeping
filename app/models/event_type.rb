class EventType < ApplicationRecord
    has_many :customer_events 
    has_many :customers, through: :customer_events
end
