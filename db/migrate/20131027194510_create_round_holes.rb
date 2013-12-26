class CreateRoundHoles < ActiveRecord::Migration
  def change
    create_table :round_holes do |t|

      t.timestamps
    end
  end
end
