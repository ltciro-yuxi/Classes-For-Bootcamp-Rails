class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.string :nombre
      t.integer :piso
      t.integer :tower_id

      t.timestamps null: false
    end
  end
end
