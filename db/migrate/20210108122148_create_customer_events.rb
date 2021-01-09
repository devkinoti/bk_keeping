class CreateCustomerEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :customer_events do |t|
      t.date :customer_event_date
      t.text :customer_event_details
      t.belongs_to :customer
      t.belongs_to :event_type
      t.timestamps
    end
  end
end
