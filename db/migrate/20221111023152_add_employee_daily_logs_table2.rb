class AddEmployeeDailyLogsTable2 < ActiveRecord::Migration[6.0]
  def change
    create_table :employee_daily_logs, id: :bigint, unsigned: true, comment: 'This table is for the daily logs of the employees and it consists the employee time log record' do |t|
      t.bigint :employee_id, null: false
      t.bigint :employee_time_log_id, null: false
      t.string :type, null: false
      t.date :entry_date, null: false
      t.string :notes
      t.datetime :deleted_at, default: "1000-01-01 00:00:00", null: false

      t.timestamps
    end
  end
end
