class Tee < ActiveRecord::Base
	has_many :rounds

	def self.import(file)
	CSV.foreach(file.path, headers: true) do |row|
		tees = find_by_id(row["id"]) ||new
		tees.attributes = row.to_hash.slice(*Tee.attribute_names())
		tees.save!
		end
	end	
end
