class AddGstnoToCustomer < ActiveRecord::Migration[7.0]
  def change
    add_column :customers, :gstin, :string
  end
end
