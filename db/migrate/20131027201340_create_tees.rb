class CreateTees < ActiveRecord::Migration
  def change
    create_table :tees do |t|
      t.integer :identifier
      t.integer :name
      t.integer :distance
      t.float :courseRating
      t.integer :slopeRating

      t.timestamps
    end
  end
end
