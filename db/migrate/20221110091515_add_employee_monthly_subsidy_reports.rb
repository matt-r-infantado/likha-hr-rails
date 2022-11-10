class AddEmployeeMonthlySubsidyReports < ActiveRecord::Migration[6.0]
  def change
    create_table :employee_monthly_subsidy_reports, id: :bigint, unsigned: true, comment: 'This table is for storing monthly subsidies per employee' do |t|
      t.bigint :employee_id, null: false
      t.integer :days_reported, null: false
      t.string :benefit_type, null: false, comment: "This is the type of benefit"
      t.decimal :total_subsidy, precision: 18, scale: 2, null: false, comment: "This is total amount of subsidy"
      t.integer :month, null: false
      t.integer :year, null: false
      t.string :remarks

      t.timestamps
    end
  end
end
