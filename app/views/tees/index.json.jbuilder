json.array!(@tees) do |tee|
  json.extract! tee, :id, :identifier, :name, :distance, :courseRating, :slopeRating
  json.url tee_url(tee, format: :json)
end
