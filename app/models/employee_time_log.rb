class EmployeeTimeLog < ApplicationRecord
  belongs_to :employee
  belongs_to :employee_daily_log
end
