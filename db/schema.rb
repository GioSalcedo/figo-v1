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

ActiveRecord::Schema[7.0].define(version: 2022_10_21_202607) do
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

  create_table "bakings", force: :cascade do |t|
    t.bigint "earning_id", null: false
    t.bigint "egress_id", null: false
    t.bigint "account_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_bakings_on_account_id"
    t.index ["earning_id"], name: "index_bakings_on_earning_id"
    t.index ["egress_id"], name: "index_bakings_on_egress_id"
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
    t.string "logo"
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
    t.integer "balance"
    t.string "currency"
    t.string "category"
    t.date "date"
    t.string "beneficiary"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "egresses", force: :cascade do |t|
    t.integer "balance"
    t.string "currency"
    t.string "category"
    t.date "date"
    t.string "beneficiary"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
  add_foreign_key "bakings", "accounts"
  add_foreign_key "bakings", "earnings"
  add_foreign_key "bakings", "egresses"
  add_foreign_key "budgets", "businesses"
  add_foreign_key "businesses", "users"
  add_foreign_key "debts", "businesses"
  add_foreign_key "savings", "businesses"
end
