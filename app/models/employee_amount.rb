class EmployeeAmount < ApplicationRecord
  belongs_to :employee

  before_save :update_employee
  def self.ransackable_attributes(auth_object = nil)
    ["amount", "created_at", "employee_id", "id", "updated_at"]
  end

  def update_employee
    emp = self.employee
    emp.amount_taken += self.amount
    emp.amount_balance = emp.year_package - emp.amount_taken
    emp.save
  end
end
