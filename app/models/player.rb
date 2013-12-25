class Player < ActiveRecord::Base
	has_many :rounds
	has_many :clubs

	def self.import(file)
	CSV.foreach(file.path, headers: true) do |row|
		players = find_by_id(row["id"]) ||new
		players.attributes = row.to_hash.slice(*Player.attribute_names())
		players.save!
		end
	end	
end
