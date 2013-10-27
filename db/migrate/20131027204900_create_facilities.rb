class CreateFacilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|
      t.integer :identifier
      t.string :name

      t.timestamps
    end
  end
end
