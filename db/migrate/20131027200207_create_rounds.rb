class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.integer :identifier
      t.integer :startHole
      t.integer :endHole
      t.integer :score

      t.timestamps
    end
  end
end
