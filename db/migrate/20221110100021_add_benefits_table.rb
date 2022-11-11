class AddBenefitsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :benefits, id: :bigint, unsigned: true, comment: 'This table is the list of benefits available in the company' do |t|
      t.string :name, null: false
      t.string :type, null: false
      t.decimal :rate, precision: 18, scale: 2, null: false, comment: "This is the rate or amount of subsidy"
      t.datetime "deleted_at", default: "1000-01-01 00:00:00", null: false

      t.timestamps
    end
  end
end
