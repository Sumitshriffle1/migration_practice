class ChangCloumnInProducts < ActiveRecord::Migration[7.0]
  def change
    change_column :products, :part_number, :integer
  end
end
