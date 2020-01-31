# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_31_172819) do

  create_table "tickets", force: :cascade do |t|
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "customer_name"
    t.string "customer_address"
    t.string "customer_phone_number"
    t.text "customer_details"
    t.index ["user_id"], name: "index_tickets_on_user_id"
  end

  create_table "troubleshooting_tasks", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "ticket_id"
    t.text "description"
    t.index ["ticket_id"], name: "index_troubleshooting_tasks_on_ticket_id"
  end

  create_table "user_troubleshooting_tasks", force: :cascade do |t|
    t.integer "troubleshooting_task_id", null: false
    t.string "status"
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["troubleshooting_task_id"], name: "index_user_troubleshooting_tasks_on_troubleshooting_task_id"
    t.index ["user_id"], name: "index_user_troubleshooting_tasks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "provider"
    t.string "uid"
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "tickets", "users"
  add_foreign_key "user_troubleshooting_tasks", "troubleshooting_tasks"
end
