class AddEmployeeTimeLogsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :employee_time_logs, id: :bigint, unsigned: true, comment: 'This table is for the time logs of the employees' do |t|
      t.bigint :employee_id, null: false
      t.time :clock_in
      t.time :clock_out
      t.date :entry_date, null: false
      t.string :notes
      t.datetime "deleted_at", default: "1000-01-01 00:00:00", null: false

      t.timestamps
    end
  end
end
