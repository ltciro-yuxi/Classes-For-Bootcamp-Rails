class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :nombre
      t.integer :ident
      t.integer :apartment_id

      t.timestamps null: false
    end
  end
end
