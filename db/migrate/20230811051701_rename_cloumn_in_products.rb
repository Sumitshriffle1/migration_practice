class RenameCloumnInProducts < ActiveRecord::Migration[7.0]
  def change
    rename_column :products, :part_number, :product_number
    rename_column :products, :price, :product_price
  end
end
