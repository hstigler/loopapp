json.array!(@holes) do |hole|
  json.extract! hole, :identifier, :facility_id :number, :par, :handicap
  json.url hole_url(hole, format: :json)
end
