json.array!(@shots) do |shot|
  json.extract! shot, :identifier, :club_id, :round_hole_id, :startLat, :startLon, :endLat, :endLon, :score, :lie, :time
  json.url shot_url(shot, format: :json)
end
