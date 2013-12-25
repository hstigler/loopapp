class Facility < ActiveRecord::Base
	has_many :courses

	def self.import(file)
	CSV.foreach(file.path, headers: true) do |row|
		facilities = find_by_id(row["id"]) ||new
		facilities.attributes = row.to_hash.slice(*Facility.attribute_names())
		facilities.save!
		end
	end	
end
