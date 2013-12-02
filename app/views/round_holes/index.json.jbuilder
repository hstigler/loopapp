json.array!(@round_holes) do |round_hole|
  json.extract! round_hole, :identifier, :round_id, :hole_id
  json.url round_hole_url(round_hole, format: :json)
end
