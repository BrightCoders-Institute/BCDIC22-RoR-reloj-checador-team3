class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :email
      t.string :name
      t.string :position
      t.integer :employee_num
      t.integer :employee_private_num

      t.timestamps
    end
  end
end
