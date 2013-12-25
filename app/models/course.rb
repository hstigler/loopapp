class Course < ActiveRecord::Base
	belongs_to :facility
	has_many :rounds
	has_many :holes

	def self.import(file)
	CSV.foreach(file.path, headers: true) do |row|
		courses = find_by_id(row["id"]) ||new
		courses.attributes = row.to_hash.slice(*Course.attribute_names())
		courses.save!
		end
	end
end
