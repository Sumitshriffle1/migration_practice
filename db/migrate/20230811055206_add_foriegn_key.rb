class AddForiegnKey < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :people,:products
  end
end
