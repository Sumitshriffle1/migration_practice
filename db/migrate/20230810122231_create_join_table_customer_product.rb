class CreateJoinTableCustomerProduct < ActiveRecord::Migration[7.0]
  def change
    create_join_table :customers, :products do |t|
      t.index :product_id
      t.index :category_id
    end
  end
end
