class AddColumns < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :employee_num, :integer
    add_column :employees, :employee_private_num, :integer
  end
end
