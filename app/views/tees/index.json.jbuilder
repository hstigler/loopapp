json.array!(@tees) do |tee|
  json.extract! tee, :identifier, :name, :distance, :courseRating, :slopeRating
  json.url tee_url(tee, format: :json)
end
