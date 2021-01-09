class CreateEventTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :event_types do |t|
      t.string :event_type_code
      t.string :event_type_name
      t.text :event_type_description

      t.timestamps
    end
  end
end
