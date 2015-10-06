class TrainStop < ActiveRecord::Base
	has_and_belongs_to_many :trains

end
