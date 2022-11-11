class Employees::CreateEmployeeService
  class << self
    def execute(employee:)
      Employee.create!(employee)
    end
  end
end