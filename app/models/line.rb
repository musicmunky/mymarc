class Line < ActiveRecord::Base
	has_many :trains
	has_many :train_stops

end
