class Round < ActiveRecord::Base
	belongs_to :tee
	belongs_to :player
	belongs_to :course
	has_many :roundholes

	def self.import(file)
	CSV.foreach(file.path, headers: true) do |row|
		rounds = find_by_id(row["id"]) ||new
		rounds.attributes = row.to_hash.slice(*Round.attribute_names())
		rounds.save!
		end
	end	
end
