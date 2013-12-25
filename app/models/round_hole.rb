class RoundHole < ActiveRecord::Base
	has_many :shots
	belongs_to :round 
	belongs_to :hole 

	def self.import(file)
	CSV.foreach(file.path, headers: true) do |row|
		roundholes = find_by_id(row["id"]) ||new
		roundholes.attributes = row.to_hash.slice(*RoundHole.attribute_names())
		roundholes.save!
		end
	end	
end
