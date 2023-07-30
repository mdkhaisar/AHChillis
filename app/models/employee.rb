class Employee < ApplicationRecord
  has_many :employee_amounts
  accepts_nested_attributes_for :employee_amounts, allow_destroy: true

  before_save :update_attributes
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "name", "updated_at"]
  end
  def update_attributes
    if !self.year_package
      self.year_package = 0
    end
    if !self.amount_taken
      self.amount_taken = 0
    end
    if !self.amount_balance
      self.amount_balance = self.year_package
    end
  end
end
