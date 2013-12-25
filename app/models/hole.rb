class Hole < ActiveRecord::Base
	belongs_to :course
	has_many :roundholes

	def self.import(file)
	CSV.foreach(file.path, headers: true) do |row|
		holes = find_by_id(row["id"]) ||new
		holes.attributes = row.to_hash.slice(*Hole.attribute_names())
		holes.save!
		end
	end	
end
