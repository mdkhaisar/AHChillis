class CreateEmployeeAmounts < ActiveRecord::Migration[7.0]
  def change
    create_table :employee_amounts do |t|
      t.float :amount
      t.references :employee

      t.timestamps
    end
  end
end
