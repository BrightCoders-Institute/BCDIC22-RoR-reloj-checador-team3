class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :email
      t.string :name
      t.string :position
      t.string :employee_num
      t.string :employee_private_num

      t.timestamps
    end
  end
end
