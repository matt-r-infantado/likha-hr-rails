class AddEmployeesTable < ActiveRecord::Migration[6.0]
  def change
    create_table :employees, id: :bigint, unsigned: true, comment: 'This table is for the list of employees' do |t|
      t.string :last_name, null: false
      t.string :first_name, null: false
      t.string :middle_name, null: false
      t.date :birth_date, null: false
      t.string :contact_number, null: false
      t.string :email, null: false
      t.bigint :department_id, null: false
      t.string :position, null: false
      t.string :status, null: false, comment: 'This is the status of employment'
      
      t.timestamps
    end
  end
end
