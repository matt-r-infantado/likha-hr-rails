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

ActiveRecord::Schema.define(version: 2022_11_10_091515) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employee_daily_logs", comment: "This table is for the daily logs of the employees and it consists the employee time log record", force: :cascade do |t|
    t.string "type", null: false
    t.bigint "employee_time_log_id", null: false
    t.date "entry_date", null: false
    t.string "notes"
    t.datetime "deleted_at", default: "1000-01-01 00:00:00", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employee_monthly_subsidy_reports", comment: "This table is for storing monthly subsidies per employee", force: :cascade do |t|
    t.bigint "employee_id", null: false
    t.integer "days_reported", null: false
    t.string "benefit_type", null: false, comment: "This is the type of benefit"
    t.decimal "total_subsidy", precision: 18, scale: 2, null: false, comment: "This is total amount of subsidy"
    t.integer "month", null: false
    t.integer "year", null: false
    t.string "remarks"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employee_time_logs", comment: "This table is for the time logs of the employees", force: :cascade do |t|
    t.bigint "employee_id", null: false
    t.time "clock_in"
    t.time "clock_out"
    t.date "entry_date", null: false
    t.string "notes"
    t.datetime "deleted_at", default: "1000-01-01 00:00:00", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employees", comment: "This table is for the list of employees", force: :cascade do |t|
    t.string "last_name", null: false
    t.string "first_name", null: false
    t.string "middle_name", null: false
    t.date "birth_date", null: false
    t.string "contact_number", null: false
    t.string "email", null: false
    t.bigint "department_id", null: false
    t.string "position", null: false
    t.string "status", null: false, comment: "This is the status of employment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
