class AddDepartmentsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :departments, id: :bigint, unsigned: true, comment: 'This table is for the list of departments' do |t|
      t.string :name, null: false
      t.bigint :intermediate_head, null: false, comment: "This is the employee id of the intermediate head"

      t.timestamps
    end
  end
end
