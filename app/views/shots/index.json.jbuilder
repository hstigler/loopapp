json.array!(@shots) do |shot|
  json.extract! shot, :identifier, :startLat, :startLon, :endLat, :endLon, :score, :lie, :time
  json.url shot_url(shot, format: :json)
end
