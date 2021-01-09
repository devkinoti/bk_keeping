# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_08_123934) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "book_entries", force: :cascade do |t|
    t.bigint "customer_account_id", null: false
    t.string "book_type_code"
    t.date "entry_date"
    t.string "debit_or_credit"
    t.integer "entry_amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "financial_transaction_id", null: false
    t.bigint "book_type_id", null: false
    t.index ["book_type_id"], name: "index_book_entries_on_book_type_id"
    t.index ["customer_account_id"], name: "index_book_entries_on_customer_account_id"
    t.index ["financial_transaction_id"], name: "index_book_entries_on_financial_transaction_id"
  end

  create_table "book_types", force: :cascade do |t|
    t.integer "book_type_code"
    t.string "book_type_name"
    t.text "book_type_description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customer_accounts", force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.string "account_name"
    t.string "account_number_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_customer_accounts_on_customer_id"
  end

  create_table "customer_events", force: :cascade do |t|
    t.date "customer_event_date"
    t.text "customer_event_details"
    t.bigint "customer_id"
    t.bigint "event_type_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_customer_events_on_customer_id"
    t.index ["event_type_id"], name: "index_customer_events_on_event_type_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "customer_name"
    t.string "customer_address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "event_types", force: :cascade do |t|
    t.string "event_type_code"
    t.string "event_type_name"
    t.text "event_type_description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "financial_transactions", force: :cascade do |t|
    t.bigint "customer_event_id", null: false
    t.date "transaction_date"
    t.integer "transaction_amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "transaction_type_id", null: false
    t.index ["customer_event_id"], name: "index_financial_transactions_on_customer_event_id"
    t.index ["transaction_type_id"], name: "index_financial_transactions_on_transaction_type_id"
  end

  create_table "transaction_types", force: :cascade do |t|
    t.integer "transaction_type_code"
    t.string "transaction_type_name"
    t.text "transaction_type_description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "book_entries", "book_types"
  add_foreign_key "book_entries", "customer_accounts"
  add_foreign_key "book_entries", "financial_transactions"
  add_foreign_key "customer_accounts", "customers"
  add_foreign_key "financial_transactions", "customer_events"
  add_foreign_key "financial_transactions", "transaction_types"
end
