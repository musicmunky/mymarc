class Train < ActiveRecord::Base
	has_and_belongs_to_many :train_stops
	belongs_to :line

end
