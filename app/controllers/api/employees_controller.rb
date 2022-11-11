class Api::EmployeesController < ApplicationController
  def create
    Employees::CreateEmployeeService.execute(employee: employee_params)
  end
  
  def index
    employees = Employees::FetchListService.execute()
    
    render json: ActiveModel::ArraySerializer.new(
      employees,
      each_serializer: EmployeeSerializer,
      root: false).as_json
  end

  def show

  end

  def update
  end

  class EmployeeSerializer < ActiveModel::Serializer
    attributes :id,
               :email_address,
               :full_name,
               :department,
               :position,
               :status

    def id
      object[:id]
    end

    def email_address
      object[:email_address]
    end

    def full_name
      object[:full_name]
    end

    def department
      object[:department]
    end

    def position
      object[:position]
    end

    def status
      object[:status]
    end
  end

  private_constant :EmployeeSerializer

  private

  def employee_params
    params.permit(:last_name,
      :first_name,
      :middle_name,
      :birth_date,
      :contact_number,
      :email,
      :position,
      :department_id,
      :status)
  end

end