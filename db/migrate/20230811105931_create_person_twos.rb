class CreatePersonTwos < ActiveRecord::Migration[7.0]
  def change
    create_table :person_twos do |t|
      t.boolean :terms_of_service

      t.timestamps
    end
  end
end
