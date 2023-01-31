class ChangeDataType < ActiveRecord::Migration[7.0]
  def change
    remove_column(:employees, :employee_num)
    remove_column(:employees, :employee_private_num)
  end
end
