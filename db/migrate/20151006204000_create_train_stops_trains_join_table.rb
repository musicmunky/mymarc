class CreateTrainStopsTrainsJoinTable < ActiveRecord::Migration
	def change
		create_table :train_stops_trains, :id => false do |t|
			t.belongs_to :train, index: true
			t.belongs_to :train_stop, index: true
		end
	end
end
