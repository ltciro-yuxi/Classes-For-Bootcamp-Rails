class ChangeAgeToperson < ActiveRecord::Migration
  def change
  	change_column :people, :age, :string
  end
end
