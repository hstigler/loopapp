class Club < ActiveRecord::Base
	has_many :shots
	belongs_to :player

	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			clubs = find_by_id(row["id"]) ||new
			clubs.attributes = row.to_hash.slice(*Club.attribute_names())
			clubs.save!
		end
	end
end
