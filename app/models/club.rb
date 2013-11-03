class Club < ActiveRecord::Base
	has_many :shots
	belongs_to :player
end
