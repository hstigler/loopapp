class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :make
      t.string :model
      t.integer :order
      t.integer :name

      t.timestamps
    end
  end
end
