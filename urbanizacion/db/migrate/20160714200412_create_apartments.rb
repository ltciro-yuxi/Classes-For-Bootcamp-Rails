class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.string :name
      t.string :floor
      t.integer :tower_id

      t.timestamps null: false
    end
  end
end
