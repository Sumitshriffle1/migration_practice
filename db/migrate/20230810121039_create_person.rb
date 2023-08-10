class CreatePerson < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :name
      t.string :part_number

      t.timestamps
      # t.string :name, index: true
      # t.string :email, index: { unique: true, name: 'unique_emails' }
    end
  end
end
