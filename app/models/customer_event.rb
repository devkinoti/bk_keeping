class CustomerEvent < ApplicationRecord
    belongs_to :customers
    belongs_to :event_types
end
