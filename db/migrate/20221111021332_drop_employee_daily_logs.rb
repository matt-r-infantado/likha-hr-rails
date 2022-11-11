class DropEmployeeDailyLogs < ActiveRecord::Migration[6.0]
  def up
    drop_table :employee_daily_logs
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
