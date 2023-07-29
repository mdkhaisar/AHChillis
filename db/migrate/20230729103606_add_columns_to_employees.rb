class AddColumnsToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :year_package, :float
    add_column :employees, :amount_taken, :float
    add_column :employees, :amount_balance, :float
  end
end
