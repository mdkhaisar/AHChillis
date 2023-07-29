class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.integer :pincode
      t.string :item_name
      t.integer :bags
      t.integer :weight
      t.string :truck_number
      t.string :from
      t.string :to
      t.float :price_per_kg
      t.float :amount
      t.float :c_gst
      t.float :s_gst
      t.float :total_amt

      t.timestamps
    end
  end
end
