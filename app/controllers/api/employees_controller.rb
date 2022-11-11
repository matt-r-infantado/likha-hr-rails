class Api::EmployeesController < ApplicationController
  def create
    Employees::CreateEmployeeService.execute(employee: create_params)
  end
  
  def index
    employees = Employees::FetchListService.execute()
    
    render json: ActiveModel::ArraySerializer.new(
      employees,
      each_serializer: EmployeeSerializer,
      root: false).as_json
  end

  def show
    employee = Employees::FetchDetailService.execute(id: show_param[:id])

    render json: EmployeeDetailSerializer.new(
      employee,
      root: false).as_json
  end

  def update
    update_employee = target_employee.update!(update_params)
    update_employee
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

  class EmployeeDetailSerializer < ActiveModel::Serializer
    attributes :id,
               :last_name,
               :first_name,
               :middle_name,
               :birth_date,
               :contact_number,
               :email,
               :department_id,
               :position,
               :status
  end

  private_constant :EmployeeSerializer

  private

  def create_params
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

  def show_param
    params.permit(:id)
  end

  def update_params
    params.permit(:id,
      :last_name,
      :first_name,
      :middle_name,
      :birth_date,
      :contact_number,
      :email,
      :position,
      :department_id,
      :status)
  end

  def target_employee
    emp = Employee.find(update_params[:id])
    emp
  end

end