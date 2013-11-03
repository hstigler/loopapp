class Course < ActiveRecord::Base
	belongs_to :facility
	has_many :rounds
	has_many :holes
end
