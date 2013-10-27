class CreateHoles < ActiveRecord::Migration
  def change
    create_table :holes do |t|
      t.integer :identifier
      t.integer :number
      t.integer :par
      t.integer :handicap

      t.timestamps
    end
  end
end
