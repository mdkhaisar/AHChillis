class CreateFarmers < ActiveRecord::Migration[7.0]
  def change
    create_table :farmers do |t|
      t.string :name
      t.string :item_name
      t.integer :bags
      t.integer :weight
      t.integer :price_per_kg
      t.float :apmc_mf
      t.float :amount

      t.timestamps
    end
  end
end
