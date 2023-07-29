class Farmer < ApplicationRecord
  before_save :update_items

  def self.ransackable_attributes(auth_object = nil)
    ["amount", "apmc_mf", "bags", "created_at", "id", "item_name", "name", "price_per_kg", "updated_at", "weight"]
  end

  def update_items
    self.amount = self.weight * self.price_per_kg
    self.apmc_mf = self.amount * 0.006
  end
end
