class AddRelationshipFields < ActiveRecord::Migration
  def change

  	#Add to Clubs
  	add_column :clubs, :player_id, :integer
  	add_index :clubs, :player_id

  	#Add to Shots
  	add_column :shots, :club_id, :integer
  	add_index :shots, :club_id
	add_column :shots, :round_hole_id, :integer
  	add_index :shots, :round_hole_id

  	#Add to Round Hole
  	add_column :round_holes, :round_id, :integer
  	add_index :round_holes, :round_id
  	add_column :round_holes, :hole_id, :integer
  	add_index :round_holes, :hole_id

  	#Add to Round
  	add_column :rounds, :tee_id, :integer
  	add_index :rounds, :tee_id
	add_column :rounds, :player_id, :integer
  	add_index :rounds, :player_id
  	add_column :rounds, :course_id, :integer
  	add_index :rounds, :course_id

  	#Add to Course
  	add_column :courses, :facility_id, :integer
  	add_index :courses, :facility_id

  	#Add to Hole
  	add_column :holes, :course_id, :integer
  	add_index :holes, :course_id

    #Add to Tee
    add_column :tees, :course_id, :integer
    add_index :tees, :course_id
  end
end
