class Employee < ApplicationRecord
  has_many :employee_time_logs
  has_many :employee_leave_applications
  has_many :employee_monthly_subsidy_reports
  has_many :employee_daily_logs

  belongs_to :department
end
