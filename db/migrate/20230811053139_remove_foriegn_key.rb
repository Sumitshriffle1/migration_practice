class RemoveForiegnKey < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :people, :products
  end
end
