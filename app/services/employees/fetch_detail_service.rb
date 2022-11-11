class Employees::FetchDetailService
  class << self
    def execute(id:)
      employee = Employee.find(id);
      employee
    end
  end
end
