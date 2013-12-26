class CreateShots < ActiveRecord::Migration
  def change
    create_table :shots do |t|
      t.float :startLat
      t.float :startLon
      t.float :endLat
      t.float :endLon
      t.integer :score
      t.integer :lie
      t.datetime :time

      t.timestamps
    end
  end
end
