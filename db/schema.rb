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

ActiveRecord::Schema[7.0].define(version: 2022_10_22_211406) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.bigint "business_id", null: false
    t.string "name"
    t.integer "balance"
    t.string "currency"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_id"], name: "index_accounts_on_business_id"
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "bankings", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "earning_id", null: false
    t.bigint "egress_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["earning_id"], name: "index_bankings_on_earning_id"
    t.index ["egress_id"], name: "index_bankings_on_egress_id"
    t.index ["user_id"], name: "index_bankings_on_user_id"
  end

  create_table "budgets", force: :cascade do |t|
    t.bigint "business_id", null: false
    t.string "name"
    t.date "date"
    t.integer "balance"
    t.string "currency"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_id"], name: "index_budgets_on_business_id"
  end

  create_table "businesses", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_businesses_on_user_id"
  end

  create_table "debts", force: :cascade do |t|
    t.bigint "business_id", null: false
    t.string "name"
    t.date "date"
    t.integer "balance"
    t.string "currency"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_id"], name: "index_debts_on_business_id"
  end

  create_table "earnings", force: :cascade do |t|
    t.bigint "account_id", null: false
    t.integer "balance"
    t.string "currency"
    t.string "category"
    t.date "date"
    t.string "beneficiary"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_earnings_on_account_id"
  end

  create_table "egresses", force: :cascade do |t|
    t.bigint "account_id", null: false
    t.integer "balance"
    t.string "currency"
    t.string "category"
    t.date "date"
    t.string "beneficiary"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_egresses_on_account_id"
  end

  create_table "savings", force: :cascade do |t|
    t.bigint "business_id", null: false
    t.string "name"
    t.date "date"
    t.integer "balance"
    t.string "currency"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_id"], name: "index_savings_on_business_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "firts_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.date "birthday", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "accounts", "businesses"
  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "bankings", "earnings"
  add_foreign_key "bankings", "egresses"
  add_foreign_key "bankings", "users"
  add_foreign_key "budgets", "businesses"
  add_foreign_key "businesses", "users"
  add_foreign_key "debts", "businesses"
  add_foreign_key "earnings", "accounts"
  add_foreign_key "egresses", "accounts"
  add_foreign_key "savings", "businesses"
end
