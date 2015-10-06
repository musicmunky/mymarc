json.array!(@train_stops) do |train_stop|
  json.extract! train_stop, :id, :name, :arrive_time, :depart_time, :line_id
  json.url train_stop_url(train_stop, format: :json)
end
