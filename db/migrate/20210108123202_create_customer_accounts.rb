class CreateCustomerAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :customer_accounts do |t|
      t.references :customer, null: false, foreign_key: true
      t.string :account_name
      t.string :account_number_code

      t.timestamps
    end
  end
end
