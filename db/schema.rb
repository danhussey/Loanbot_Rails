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

ActiveRecord::Schema[7.1].define(version: 2024_07_08_114626) do
  create_table "borrowing_capacity_calculations", force: :cascade do |t|
    t.decimal "annual_pretax_income"
    t.integer "number_of_applicants"
    t.integer "number_of_dependents_under_18"
    t.integer "number_of_dependents_over_18"
    t.string "loan_type"
    t.decimal "annual_total_expenses"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "call_metadata", force: :cascade do |t|
    t.string "call_id"
    t.string "from_number"
    t.string "to_number"
    t.string "direction"
    t.string "call_type"
    t.string "call_status"
    t.string "agent_id"
    t.json "metadata"
    t.json "retell_llm_dynamic_variables"
    t.boolean "opt_out_sensitive_data_storage"
    t.integer "borrowing_capacity_calculation_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "customer_id"
    t.index ["borrowing_capacity_calculation_id"], name: "index_call_metadata_on_borrowing_capacity_calculation_id"
  end

  create_table "conversations", force: :cascade do |t|
    t.string "name"
    t.integer "loan_amount"
    t.integer "income"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "phone"
    t.string "status"
  end

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "loan_criterions", force: :cascade do |t|
    t.decimal "max_dti_ratio"
    t.decimal "min_deposit_percentage"
    t.decimal "max_loan_amount"
    t.integer "max_loan_term"
    t.decimal "min_interest_rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  add_foreign_key "call_metadata", "borrowing_capacity_calculations"
end
