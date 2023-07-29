class Customer < ApplicationRecord
  before_save :update_items
  def self.ransackable_attributes(auth_object = nil)
    ["address", "amount", "bags", "c_gst", "city", "created_at", "from", "id", "item_name", "name", "pincode", "price_per_kg", "s_gst", "state", "to", "total_amt", "truck_number", "updated_at", "weight"]
  end

  def update_items
    self.amount = self.weight * self.price_per_kg
    gst = self.amount * 0.025
    self.c_gst = gst
    self.s_gst = gst
    self.total_amt = self.amount + (gst * 2)
  end
end
