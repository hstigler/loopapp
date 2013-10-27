json.array!(@rounds) do |round|
  json.extract! round, :identifier, :startHole, :endHole, :score
  json.url round_url(round, format: :json)
end
