json.array!(@lines) do |line|
  json.extract! line, :id, :name, :direction
  json.url line_url(line, format: :json)
end
