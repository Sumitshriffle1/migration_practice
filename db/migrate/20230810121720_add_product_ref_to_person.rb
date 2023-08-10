class AddProductRefToPerson < ActiveRecord::Migration[7.0]
  def change
    add_reference :people, :product, null: false, foreign_key: true
  end
end
