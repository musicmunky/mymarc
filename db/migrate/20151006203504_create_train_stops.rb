class CreateTrainStops < ActiveRecord::Migration
  def change
    create_table :train_stops do |t|
      t.string :name
      t.time :arrive_time
      t.time :depart_time
      t.integer :line_id

      t.timestamps null: false
    end
  end
end
