class Round < ActiveRecord::Base
	belongs_to :tee
	belongs_to :player
	belongs_to :course
	has_many :roundholes
end
