class EmployeeDailyLog < ApplicationRecord
  belongs_to :employee
  has_one :employee_time_log
end
