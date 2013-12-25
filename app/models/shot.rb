class Shot < ActiveRecord::Base
	belongs_to :club
	belongs_to :roundhole

	def self.import(file)
	CSV.foreach(file.path, headers: true) do |row|
		shots = find_by_id(row["id"]) ||new
		shots.attributes = row.to_hash.slice(*Shot.attribute_names())
		shots.save!
		end
	end	
end
