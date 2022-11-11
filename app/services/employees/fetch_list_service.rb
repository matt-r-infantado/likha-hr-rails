class Employees::FetchListService
  class << self
    def execute()
      employees = Employee.all;

      employees.map {|emp| build_employee_hash(emp)}
    end

    private

    def build_employee_hash(employee)
      {
        id: employee.id,
        email_address: employee.email,
        full_name: "#{employee.first_name}  #{employee.middle_name} #{employee.last_name}",
        department: employee.department.name,
        position: employee.position,
        status: employee.status
      }
    end
  end
end