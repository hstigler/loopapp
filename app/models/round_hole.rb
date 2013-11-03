class RoundHole < ActiveRecord::Base
	has_many :shots
	belongs_to :round 
	belongs_to :hole 
end
